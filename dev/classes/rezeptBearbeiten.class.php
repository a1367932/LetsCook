<?php
if ( !isset( $_POST['bearbeitenSubmit'] ) ) {
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');

	$smarty->assign('titel', 'Gulasch');
	$smarty->assign('btext', 'seife,Schampoo');
	//Hier muss bei dem string zuerst die ��s in und uumls umgewandelt werden
	$kname=str_replace("�", "&uuml;", "kname");
	$smarty->assign('kname', $kname);
	$smarty->assign('bild', '/image/');
	$smarty->assign('zutaten', 'sehr gut r�hren');
	$smarty->assign('portion', '5');
	$smarty->display('rezeptBearbeiten.tpl');
}else{
	//Speichern der �ndernungen und weiterleiten zu Meine Daten
	
	header("Location: meineRezepte.class.php");
}
?>
