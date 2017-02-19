<?php
require_once('./vendor/autoload.php');

define('LAYOUT_REL_PATH', '../layout/');
define('LAYOUT_ABS_PATH', realpath(dirname(__FILE__)).'/../layout/');

if(!isset($_GET['layout'])||!isset($_GET['template'])){
    die('please set layout and template arguments');
}

$smarty = new Smarty();
$smarty->setTemplateDir(LAYOUT_REL_PATH.$_GET['layout']);
$smarty->setCompileDir('./out');
$smarty->setConfigDir(LAYOUT_REL_PATH.$_GET['layout']);
$smarty->setCacheDir('./out');

function __load_manifest($layout)
{
    $mFile = LAYOUT_REL_PATH . $layout . '/manifest.json';
    $manifest = @json_decode(file_get_contents($mFile), true);
    if (!file_exists($mFile) || !isset($manifest['title'])) {
        die('please provide a valid manifest first for ['.$layout.'] (missed dependency?)');
    }
    return $manifest;
}

function __init_paths($dependencies, $smarty)
{
    foreach ($dependencies as $dependency) {
        $smarty->assign($dependency.'_path', LAYOUT_ABS_PATH.$dependency);
        $__manifest = __load_manifest($dependency);
        if(!empty($__manifest['dependencies'])) {
            __init_paths($__manifest['dependencies'], $smarty);
        }
    }
}

$manifest = __load_manifest($_GET['layout']);
$manifest['dependencies'][] = $manifest['title'];
__init_paths($manifest['dependencies'], $smarty);
//now minify and remove css comments
function minify_html($tpl_output, $template) {
    $regex = array(
        "`^([\t\s]+)`ism"=>'',
        "`^\/\*(.+?)\*\/`ism"=>"",
        "`([\n\A;]+)\/\*(.+?)\*\/`ism"=>"$1",
        "`([\n\A;\s]+)//(.+?)[\n\r]`ism"=>"$1\n",
        "`(^[\r\n]*|[\r\n]+)[\s\t]*[\r\n]+`ism"=>"\n",
        '![\t ]*[\r\n]+[\t ]*!'=>'',
        '/<!--.*-->/U'=>''
    );
    $tpl_output = preg_replace(array_keys($regex),$regex,$tpl_output);
    return $tpl_output;
}

$smarty->registerFilter("output", "minify_html");

$smarty->display($_GET['template'].'.tpl');