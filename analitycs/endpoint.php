<?php
header('Content-Type: image/gif');
echo base64_decode('R0lGODlhAQABAJAAAP8AAAAAACH5BAUQAAAALAAAAAABAAEAAAICBAEAOw==');
error_reporting(~E_ALL);

if(!isset($_GET['uid'])) die();

if(!file_exists('./db.php')){
    file_put_contents('./db.php',"<? die();\n", LOCK_EX);
}

$info = $_GET['uid']."\t".time()."\t".$_SERVER['REMOTE_ADDR']."\t".$_SERVER['HTTP_USER_AGENT']."\t".$_SERVER['HTTP_REFERER']."\n";

file_put_contents('./db.php', $info, FILE_APPEND | LOCK_EX);

?>