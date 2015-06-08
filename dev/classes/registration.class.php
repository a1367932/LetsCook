<?php

require('../Smarty/libs/Smarty.class.php');
require('../config/constants.php');

$smarty = new Smarty();

$smarty->setTemplateDir('../Smarty/templates');
$smarty->setCompileDir('../Smarty/templates_c');
$smarty->setCacheDir('../Smarty/cache');
$smarty->setConfigDir('../Smarty/configs');

$smarty->display('registration.tpl');

?>