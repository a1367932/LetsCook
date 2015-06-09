<?php

require('Smarty/libs/Smarty.class.php');
require('config/constants.php');

$smarty = new Smarty();

$smarty->setTemplateDir('Smarty/templates');
$smarty->setCompileDir('Smarty/templates_c');
$smarty->setCacheDir('Smarty/cache');
$smarty->setConfigDir('Smarty/configs');

$smarty->assign('login', 'false');

	session_start();
	if(isset($_SESSION['bid']) && !empty($_SESSION['bid'])) {
		$smarty->assign('session', 'true');
	}
	else{
		$smarty->assign('session', 'false');
	}
$smarty->display('index.tpl');

?>


