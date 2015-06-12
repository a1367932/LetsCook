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

	//if($singleRow['anzahlBewertung'] != 0){
		//$smarty->assign('durchschnittBewertungen', ($singleRow['gesamtBewertung'] / (5 * $singleRow['anzahlBewertung'])) * 100);  //Prozentuelle Weiterempfehlung wird berechnet
	//}else 	$smarty->assign('durchschnittBewertungen', 0);
	
	$smarty->assign('bild', array(
			$singleRow['bild'],
			'pfad zum Rezeptbild 2 usw.',
	));
	$smarty->assign('titel', array(
			$singleRow['titel']
	));
	$smarty->assign('bewertung', array(
			'10 punkte',
			'2 sterne',
	));
	$smarty->assign('btext', array(
			$singleRow['btext'],
			'Machen sie sich eine Tasse ',
	));
	$smarty->assign('bid', array(
			'1',
			'2',
	));
	
	$smarty->display('rezepteKategorieAnzeigen.tpl');
	
	mysqli_close($conn);
?>
