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
				  FROM beitrag NATURAL LEFT OUTER JOIN bewertung 
				  WHERE bid ='".$_GET['bid']."'
			      GROUP BY bid";
	$stmt = mysqli_query($conn, $sqlSelect);
	$singleRow = mysqli_fetch_assoc($stmt);

	$smarty->assign('titel', $singleRow['titel']);
	$smarty->assign('bild', $singleRow['bild']);
	if($singleRow['anzahlBewertung'] != 0){
		$smarty->assign('durchschnittBewertungen', ($singleRow['gesamtBewertung'] / (5 * $singleRow['anzahlBewertung'])) * 100);  //Prozentuelle Weiterempfehlung wird berechnet
	}
	else 	
		$smarty->assign('durchschnittBewertungen', 0);
	
	$smarty->assign('portion', $singleRow['portion']);
	$smarty->assign('zutaten', $singleRow['zutaten']);
	$smarty->assign('btext', $singleRow['btext']);
	
	
	//Kommentare auslesen
	$sqlSelect = "SELECT kid, bname, kdatum, ktext FROM erstellt 
				  NATURAL JOIN beitrag
				  NATURAL JOIN kommentar
				  WHERE bid = 1";
	
	//Kommentar vom Kommentar auslesen
	$sqlSelect = "SELECT * FROM kommentar
				  WHERE ukid = 1";
	
	//Kommentar Arrays
	$kommentare = array(
			'kommentare1' => array(
					'haupt kommentar1',
					'unterkommentar1',
					'unterkommentar1.2'
			),
			'kommentare2' => array(
					'hauptkommentar2',
					'unterkommentare2',
					'unterkommentare2.2'
			),
	);
	$smarty->assign("kommentare", $kommentare);
	
	
	$smarty->display('rezeptAnzeigen.tpl');
	
	mysqli_close($conn);
?>
