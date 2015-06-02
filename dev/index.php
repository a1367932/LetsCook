<?php

require('Smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->setTemplateDir('Smarty/templates');
$smarty->setCompileDir('Smarty/templates_c');
$smarty->setCacheDir('Smarty/cache');
$smarty->setConfigDir('Smarty/configs');

$smarty->assign('name', 'Ned');
$smarty->display('registration.tpl');

?>
