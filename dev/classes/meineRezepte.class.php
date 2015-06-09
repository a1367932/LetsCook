<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	include("dbConnection.class.php");
	$smarty->display('meineRezepte.tpl');
	session_start();
?>

<?php

if ( !isset( $_POST['meineRezepteSubmit'] ) ) {

	$smarty->assign('bild', array(
			'pfad zum Rezeptbild 1',
			'pfad zum Rezeptbild 2 usw.',
			));
	$smarty->assign('titel', array(
			'Rezepttitel 1',
			'Rezepttitel 2 usw.',
	));
	$smarty->assign('bid', array(
			'bid 1',
			'bid 2 usw.',
	));
	
	
}else{
	header("Location: rezepteBearbeiten.class.php");
}
?>
