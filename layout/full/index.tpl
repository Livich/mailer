<!DOCTYPE html>
<html xmlns:http="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=900px">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>{$title}</title>
    <style type="text/css">{fetch file="$classic_path/style.css"}</style>
    <style type="text/css">{fetch file="$full_path/style.css"}</style>
    {$BASE_URL = 'http://univer.kharkov.ua/mail/'}
    {block name="head"}{/block}
</head>

<body>

<!-- body -->
<img src="{$BASE_URL}k.php?uid=%UID%" width="0" height="0" class="hidden no-border">
<div class="wrapper">
    {include file="{$classic_path}/header.tpl"}
    <table width="100%">
        <!-- full width red-yellow header&widget -->
        <tr class="body">
            <td colspan="12" class="widget">
                <table class="fill-width">
                    <tr class="spacer-26"><td colspan="*"></td></tr>
                    <tr class="section red"><td colspan="2"><h1><img src="{$BASE_URL}univer.png" class="icon">Із життя університету</h1></td></tr>
                    <tr class="spacer-20"><td colspan="*"></td></tr>
                    <tr class="widget yellow">
                        {block name="life_1"}{/block}
                    </tr>
                </table>
            </td>
        </tr>
        <!-- end widget -->
        <!-- half-width widgets without header -->
        <tr class="spacer-20"><td></td></tr>
        <tr class="body side-by-side">
            <td colspan="6" class="widget yellow">
                <table class="fill-width">
                    <tr class="widget yellow">
                        {block name="life_2"}{/block}
                    </tr>
                </table>
            </td>
            <td colspan="6" class="widget yellow">
                <table class="fill-width">
                    <tr class="widget yellow">
                        {block name="life_3"}{/block}
                    </tr>
                </table>
            </td>
        </tr>
        <!-- end widget -->
        <!-- full width navy-transparent header&multiple widgets -->
        <tr class="body">
            <td colspan="12" class="widget">
                <table class="fill-width">
                    <tr class="spacer-26"><td colspan="*"></td></tr>
                    <tr class="section navy"><td colspan="2"><h1><img src="{$BASE_URL}shapka.png" class="icon">Університет запрошує</h1></td></tr>
                    <tr class="spacer-20"><td colspan="*"></td></tr>
                    <!-- widget 1 -->
                    <tr class="widget transparent">
                        {block name="invite_1"}{/block}
                    </tr>
                    <!-- /widget 1 -->
                    <tr class="spacer-20"><td></td></tr>
                    <!-- widget 2 -->
                    <tr class="widget transparent">
                        {block name="invite_2"}{/block}
                    </tr>
                    <!-- /widget 2 -->
                    <tr class="spacer-20"><td></td></tr>
                    <!-- widget 3 -->
                    <tr class="widget transparent">
                        {block name="invite_3"}{/block}
                    </tr>
                    <!-- /widget 3 -->
                </table>
            </td>
        </tr>
        <!-- end widget -->
        <!-- offer widget -->
        <tr class="spacer-26"><td></td></tr>
        <tr class="body">
            <td colspan="12" class="widget">
                <table class="fill-width">
                    <tr class="section yellow"><td colspan="2"><h1><img src="{$BASE_URL}flag.png" class="icon">Університет пропонує</h1></td></tr>
                    <tr class="widget yellow">
                        {block name="offer"}{/block}
                    </tr>
                </table>
            </td>
        </tr>
        <!-- end widget -->
        <!-- achtung widget -->
        <tr class="spacer-26"><td></td></tr>
        <tr class="body">
            <td colspan="12" class="widget">
                <table class="fill-width">
                    <tr class="section red"><td colspan="2"><h1><img src="{$BASE_URL}megaphone.png" class="icon">Про важливе</h1></td></tr>
                    <tr class="spacer-20"><td colspan="*"></td></tr>
                    <tr class="widget transparent">
                        {block name="achtung"}{/block}
                    </tr>
                </table>
            </td>
        </tr>
        <!-- end widget -->
        <tr class="spacer-26"></tr>
        <!-- full width navy-transparent header&widget -->
        <tr class="body">
            <td colspan="12" class="widget">
                <table class="fill-width">
                    <tr class="section navy"><td colspan="2"><h1><img src="{$BASE_URL}comment.png" class="icon">Ми в мережі</h1></td></tr>
                    <tr class="spacer-20"><td colspan="*"></td></tr>
                    <tr class="widget transparent">
                        <td>
                            Долучайся до нас у соціальних медіа! Стань свідомим представником каразінської спільноти!
                            <br><br>
                            <table width="100%">
                                <tr>
                                    <td class="color-fb align-center lh-small">
                                        <a href="http://www.facebook.com/Karazin.University" target="_blank"><img src="{$BASE_URL}fb.png" class="h-center"></a><br>facebook
                                    </td>
                                    <td class="color-vk align-center lh-small">
                                        <a href="http://vk.com/karazin.university" target="_blank"><img src="{$BASE_URL}vk.png" class="h-center"></a><br>вконтакте
                                    </td>
                                    <td class="color-tw align-center lh-small">
                                        <a href="http://twitter.com/#!/KarazinUniver" target="_blank"><img src="{$BASE_URL}tw.png" class="h-center"></a><br>twitter
                                    </td>
                                    <td class="color-gp align-center lh-small">
                                        <a href="https://plus.google.com/+KarazinUniver" target="_blank"><img src="{$BASE_URL}g+.png" class="h-center"></a><br>google+
                                    </td>
                                    <td class="color-yt align-center lh-small">
                                        <a href="https://www.youtube.com/c/KarazinUniver" target="_blank"><img src="{$BASE_URL}yt.png" class="h-center"></a><br>youtube
                                    </td>
                                </tr>
                            </table>
                            <br><br>
                            <table width="100%" style="line-height:1;">
                                <tr class="widget">
                                    <td class="yellow" width="80px">
                                        <a href="http://www.univer.kharkov.ua/" target="_blank"><img src="{$BASE_URL}logo.png" height="75px" alt="Logo"></a>
                                    </td>
                                    <td class="yellow v-middle" width="35%">
                                        <a href="http://www.univer.kharkov.ua/" target="_blank" class="no-decoration textcolor">
                                            <b>Сайт університету</b><br><br>
                                            Саме тут всі події із життя Каразінського
                                        </a>
                                    </td>
                                    <td class="spacer-10"></td>
                                    <td class="yellow"  width="80px">
                                        <a href="http://start.karazin.ua/" target="_blank"><img src="{$BASE_URL}usmall.png" height="75px"></a>
                                    </td>
                                    <td class="yellow v-middle"  width="35%">
                                        <a href="http://start.karazin.ua/" target="_blank" class="no-decoration textcolor">
                                            <b>Абітурієнт Каразінського</b><br><br>
                                            Найактуальніша інформація для вступників
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr class="spacer-26"></tr>
        <!-- end widget -->
        <!-- /body -->
        </table>
        <table width="100%" bgcolor="#475478">
            <tr class="spacer-26"></tr>
            <tr class="footer">
                <td colspan="9" class="v-top">
                    <table>
                        <tr class="logo logo-footer" style="padding-top:0;">
                            <td><a href="http://univer.kharkov.ua" target="_blank"><img src="{$BASE_URL}logo.png" height="55px" alt="Logo"></a></td>
                            <td class="spacer-5"></td>
                            <td>
                                <b>Харківський національний університет<br>
                                    імені В.&nbsp;Н.&nbsp;Каразіна</b>
                                <br>
                                майдан Свободи, 4
                            </td>
                        </tr>
                    </table>
                </td>
                <td colspan="3" class="small-hide">
                    Знайшли щось цікаве?<br>
                    Відправте це нам!<br><br>
                    <a class="button small navy" href="http://univer.kharkov.ua/?addnews" target="_blank">Відправити новину</a>
                </td>
            </tr>
            <tr class="footer">
                <td class="align-left"><a href="http://www.facebook.com/Karazin.University" target="_blank"><img src="{$BASE_URL}fb_32x32.png"></a></td>
                <td class="align-left"><a href="http://vk.com/karazin.university" target="_blank"><img src="{$BASE_URL}vk_32x32.png"></a></td>
                <td class="align-left"><a href="http://twitter.com/#!/KarazinUniver" target="_blank"><img src="{$BASE_URL}tw_32x32.png"></a></td>
                <td class="align-left"><a href="https://plus.google.com/+KarazinUniver" target="_blank"><img src="{$BASE_URL}g+_32x32.png"></a></td>
                <td class="align-left"><a href="https://www.youtube.com/c/KarazinUniver" target="_blank"><img src="{$BASE_URL}yt_32x32.png"></a></td>
                <td class="fill-width" colspan="7"></td>
            </tr>
            <tr class="footer">
                <td colspan="5">
                    Якщо ви не бажаєте отримувати ці листи <br>
                    і хочете відписатись, <a href="http://goo.gl/forms/Bcgk9Xn1Rq" target="_blank">натисніть тут</a>.
                </td>
                <td class="fill-width" colspan="7"></td>
            </tr>
    </table>
</div>
<!-- /body -->
</body>
</html>