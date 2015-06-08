<?php

if ( !isset( $_POST['imageaendernSubmit'] ) ) {
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');

	$smarty->display('imageaendern.tpl');
}else{
	//Neues Image Speichern
	//und kehre zu MEINE DATEN zurück
	
	
	header("Location: meineDaten.class.php");
}

?>
