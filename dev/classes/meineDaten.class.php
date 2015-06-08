<?php

if ( !isset( $_POST['meineDatenSubmit'] ) ) {
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
	$smarty->assign('alter', 'aktuelesDatum-geburtsdatum');
	$smarty->assign('bbild', 'pfad zum bild');
	$smarty->assign('bname', 'BenutzernameHans');
	$smarty->display('meineDaten.tpl');
}else{
	header("Location: datenBearbeiten.class.php");
}
?>
