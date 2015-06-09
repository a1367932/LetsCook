<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	
	
	include("dbConnection.class.php");
	
	//Rezeptdaten auslesen
	$sqlSelect = "SELECT titel, btext, bild, zutaten, portion, count(bbid) AS anzahlBewertung, sum(wert) AS gesamtBewertung 
				  FROM beitrag NATURAL JOIN bewertung 
				  WHERE bid = 1 
			      GROUP BY bid";
	$stmt = mysqli_query($conn, $sqlSelect);
	$singleRow = mysqli_fetch_assoc($stmt);

	$smarty->assign('titel', $singleRow['titel']);
	$smarty->assign('bild', $singleRow['bild']);
	$smarty->assign('durchschnittBewertungen', ($singleRow['gesamtBewertung'] / (5 * $singleRow['anzahlBewertung'])) * 100);  //Prozentuelle Weiterempfehlung wird berechnet
	$smarty->assign('portion', $singleRow['portion']);
	$smarty->assign('zutaten', $singleRow['zutaten']);
	$smarty->assign('btext', $singleRow['btext']);
	$smarty->display('rezeptAnzeigen.tpl');
	
	mysqli_close($conn);
?>
