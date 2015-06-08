<?php
if ( !isset( $_POST['bearbeitenSubmit'] ) ) {
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');

	$smarty->assign('vorname', 'Max');
	$smarty->assign('nachname', 'Mustermann');
	$smarty->assign('strasse', 'Musterstrasse');
	$smarty->assign('nummer', 'Musternummer');
	$smarty->assign('plz', 'Musterplz');
	$smarty->assign('ort', 'Musterort');
	$smarty->assign('land', 'Musterland');
	$smarty->assign('email', 'muster@muster.at');
	$smarty->display('datenBearbeiten.tpl');
}else{
	//Speichern der šndernungen und weiterleiten zu Meine Daten
	
	header("Location: meineDaten.class.php");
}
?>
