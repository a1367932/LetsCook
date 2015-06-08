<?php

if ( !isset( $_POST['meineRezepteSubmit'] ) ) {
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');

	$smarty->assign('bild', array(
			'pfad zum Rezeptbild 1',
			'pfad zum Rezeptbild 2 usw.',
			));
	$smarty->assign('titel', array(
			'Rezepttitel 1',
			'Rezepttitel 2 usw.',
	));
	
	$smarty->display('meineRezepte.tpl');
}else{
	header("Location: rezepteBearbeiten.class.php");
}
?>
