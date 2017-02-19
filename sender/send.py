import subprocess
import sys
import unicodecsv as csv
import os
import hashlib
import time

ADDR_FILE = "email.csv"
MAIL_FILE = "mail.html"
MAIL_DATA = ""
MAIL_SUBJECT = "YOUR SUBJECT"     
SERVER_LOGIN = "SMTP LOGIN"
SERVER_PASS = "SMTP PASS" 
URL_UNSUBSCRIBE = "UNSUBSCRIBE FORM URL"
SENDER_NAME = "SENDER NAME"
IMITATE_MODE = False
DEVNULL = open(os.devnull, 'w')

print("Ready to send [%s] to users from [%s]" % (MAIL_FILE, ADDR_FILE))


print("Juice:   ", end="")
p = subprocess.Popen("juice --web-resources-images false %s %s.juice" % (MAIL_FILE, MAIL_FILE), shell=True)
if p.wait() == 0:
    print("OK")
    MAIL_FILE = "%s.juice" % MAIL_FILE
    with open(MAIL_FILE, "rb") as mailfile:
        MAIL_DATA = mailfile.read().decode('utf-8')
else:
    print("Fail")
    sys.exit()

print("Sending...")
sent = failed = 0
with open(ADDR_FILE, 'rb') as csvfile:
    spamreader = csv.DictReader(csvfile, encoding='utf-8')
    for row in spamreader:
        with open('tmp.html', 'w+', encoding='utf-8') as mailtmp:
            if row['FirstName'] is None:
              row['FirstName'] = ''  
            mailtmp.write(MAIL_DATA.replace('%USERNAME%', row['FirstName']).replace('%UID%',hashlib.md5((row['EmailAddress']+'SALT').encode('utf-8')).hexdigest()))
        print("Sending to <%s>:    " % (row['EmailAddress']), end="")
        if not IMITATE_MODE:
            p = subprocess.Popen("blat tmp.html -server localhost -port 25 -u %s -f \"%s <%s>\" -x \"List-Unsubscribe: <%s>\" -pw \"%s\" -to \"%s\" -subject \"%s\"" % (SENDER_LOGIN, SENDER_NAME, SENDER_LOGIN, URL_UNSUBSCRIBE, SERVER_PASS, row['EmailAddress'], MAIL_SUBJECT), shell=True, stdout=DEVNULL)
            if p.wait() == 0:
                print("OK")
                sent += 1
            else:
                print("Fail")
                failed += 1
        else:
            print("IMITATE MODE")

        time.sleep(5)
print("%i sent, %i failed." % (sent, failed))
DEVNULL.close()
