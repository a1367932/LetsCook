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
	$sqlSelectKommentare = "SELECT kid, bname, kdatum, ktext FROM erstellt 
						    NATURAL JOIN beitrag
						    NATURAL JOIN kommentar
						    WHERE bid = ".$_GET['bid'] ."
						    AND ukid IS NULL";
	
	
	
	$stmtKommentare = mysqli_query($conn, $sqlSelectKommentare);
	
	while($row = mysqli_fetch_array($stmtKommentare)) {
		$kid[] = $row['kid'];
		$bname[] = $row['bname'];
		$kdatum[] = $row['kdatum'];
		$ktext[] = $row['ktext'];
		
		//Kommentar vom Kommentar auslesen
		$sqlSelectUnterkommentare = "SELECT kid, bname, kdatum, ktext FROM kommentar
									 NATURAL JOIN erstellt
				  					 WHERE ukid = ". $row['kid'];
		
		$stmtUnterKommentare = mysqli_query($conn, $sqlSelectUnterkommentare);
	
		while($row = mysqli_fetch_array($stmtUnterKommentare)) {
			$ukid[] = $row['kid'];
			$ubname[] = $row['bname'];
			$ukdatum[] = $row['kdatum'];
			$uktext[] = $row['ktext'];
		}
	}
	
	$smarty->assign('kid', $kid);
	$smarty->assign('bname', $bname);
	$smarty->assign('kdatum', $kdatum);
	$smarty->assign('ktext', $ktext);
	
	$smarty->assign('ukid', $ukid);
	$smarty->assign('ubname', $ubname);
	$smarty->assign('ukdatum', $ukdatum);
	$smarty->assign('uktext', $uktext);
	
	$smarty->display('rezeptAnzeigen.tpl');
	
	mysqli_close($conn);
?>
