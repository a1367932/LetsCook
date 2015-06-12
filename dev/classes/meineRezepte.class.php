<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	include("dbConnection.class.php");
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
	$smarty->assign('bewertung', array(
			'10 punkte',
			'2 sterne',
	));
	$smarty->assign('btext', array(
			'Kochen Sie die shocko und seife',
			'Machen sie sich eine Tasse ',
	));
	$smarty->assign('bid', array(
			'1',
			'2',
	));

	$smarty->display('meineRezepte.tpl');
	
}else{
	header("Location: rezepteBearbeiten.class.php");
}
?>
