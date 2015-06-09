<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');

	session_start();
?>

<?php

if ( !isset( $_POST['meineDatenSubmit'] ) ) {

	include("dbConnection.class.php");
	
	//Benutzerdaten auslesen
	$sqlSelect = "SELECT * FROM benutzer WHERE bname = '".$_SESSION['bid']."'";
	$stmt = mysqli_query($conn, $sqlSelect);
	$singleRow = mysqli_fetch_assoc($stmt);
	
	$smarty->assign('vorname', $singleRow['vorname']);
	$smarty->assign('nachname', $singleRow['nachname']);
	$smarty->assign('strasse', $singleRow['strasse']);
	$smarty->assign('nummer', $singleRow['hausnummer']);
	$smarty->assign('plz', $singleRow['plz']);
	$smarty->assign('ort', $singleRow['ort']);
	$smarty->assign('land', $singleRow['land']);
	$smarty->assign('email', $singleRow['email']);
	$smarty->assign('bbild', $singleRow['bbild']);
	$smarty->assign('bname', $singleRow['bname']);
	
	//das Alter wird berechnet (aktuelles Jahr - Gebutrsjahr)
	date_default_timezone_set("Europe/Berlin");
	$timestamp = time();
	$geburtsdatum = strtotime($singleRow['geburtsdatum']);
	$alter = date ('Y', $timestamp) - date ('Y', $geburtsdatum);
	$smarty->assign('alter', $alter);
	
	$smarty->display('meineDaten.tpl');
	
	mysqli_close($conn);
}else{
	header("Location: datenBearbeiten.class.php");
}
?>
