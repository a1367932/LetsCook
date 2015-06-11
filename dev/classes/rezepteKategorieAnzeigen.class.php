<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	
	
	include("dbConnection.class.php");
	
	//Rezeptdaten der jeweilingen Kategorie auslesen
	$sqlSelect = "SELECT * FROM beitrag WHERE kname= '". $_GET['kategorie'] ."'";
	$stmt = mysqli_query($conn, $sqlSelect);
	$singleRow = mysqli_fetch_assoc($stmt);

// 	$smarty->assign('titel', $singleRow['titel']);
// 	$smarty->assign('bild', $singleRow['bild']);
// 	$smarty->assign('durchschnittBewertungen', ($singleRow['gesamtBewertung'] / (5 * $singleRow['anzahlBewertung'])) * 100);  //Prozentuelle Weiterempfehlung wird berechnet
// 	$smarty->assign('portion', $singleRow['portion']);
// 	$smarty->assign('zutaten', $singleRow['zutaten']);
// 	$smarty->assign('btext', $singleRow['btext']);
// 	$smarty->display('rezeptAnzeigen.tpl');

	$smarty->assign('data',array(1,2,3,4,5,6,7,8,9));
	$smarty->assign('tr',array('bgcolor="#eeeeee"','bgcolor="#dddddd"'));
	$smarty->display('rezepteKategorieAnzeigen.tpl');
	
	mysqli_close($conn);
?>
