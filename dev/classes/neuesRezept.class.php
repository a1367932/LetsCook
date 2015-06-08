<?php

if ( !isset( $_POST['neuesRezeptSubmit'] ) ) {
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	
	$smarty = new Smarty();
	
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	
	$smarty->display('neuesRezept.tpl');
}
else {
	//Speichern und weiterleiten zu Meine rezepte
	header("Location: meineRezepte.class.php");
}
?>
