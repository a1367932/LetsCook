<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	
	session_start();
	include("dbConnection.class.php");
?>
	
<?php

	if ( isset( $_POST['neuesUnterk'] ) ) {
		//Hier kommt das Speichenr des Unterkommentars
		$kid=$_GET['neuesUk'];
		$uktext=$_POST['uktext'];
		echo "Unterkommentar HauptKommentar ID: $kid Benutzername: Aus der Session auslesen?? Kommentardatum: Akktuelles date Kommentartext: $uktext";
	}else if ( isset( $_POST['neuesK'] ) ){
		//Hier kommt das Speichern eines neuen Kommentars her
		$ktext=$_POST['ktext'];
		echo "Unterkommentar HauptKommentar ID: Neue Id vergeben! Benutzername: Aus der Session auslesen?? Kommentardatum: Akktuelles date Kommentartext: $ktext";
	}else{
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
	$sqlSelectKommentare = "SELECT kid, bname, kdatum, ktext, bbild FROM erstellt 
						    NATURAL JOIN beitrag
						    NATURAL JOIN kommentar
							NATURAL JOIN benutzer
						    WHERE bid = ".$_GET['bid'] ."
						    AND ukid IS NULL";
	
	
	
	$stmtKommentare = mysqli_query($conn, $sqlSelectKommentare);
	
	while($row = mysqli_fetch_array($stmtKommentare)) {
		$kid[] = $row['kid'];
		$bname[] = $row['bname'];
		$kdatum[] = $row['kdatum'];
		$ktext[] = $row['ktext'];
		$bbild[] = $row['bbild'];
		
		//Kommentar vom Kommentar auslesen
		$sqlSelectUnterkommentare = "SELECT kid, ukid, bname, kdatum, ktext, bbild FROM kommentar
									 NATURAL JOIN erstellt
									 NATURAL JOIN benutzer
				  					 WHERE ukid = ". $row['kid'];
		
		$stmtUnterKommentare = mysqli_query($conn, $sqlSelectUnterkommentare);
	
		while($row = mysqli_fetch_array($stmtUnterKommentare)) {
			$ukid[] = $row['ukid'];
			$ubname[] = $row['bname'];
			$ukdatum[] = $row['kdatum'];
			$uktext[] = $row['ktext'];
			$ubbild[] = $row['bbild'];
		}
	}
	
	$smarty->assign('kid', $kid);
	$smarty->assign('bname', $bname);
	$smarty->assign('kdatum', $kdatum);
	$smarty->assign('ktext', $ktext);
	$smarty->assign('bbild', $bbild);
	
	$smarty->assign('ukid', $ukid);
	$smarty->assign('ubname', $ubname);
	$smarty->assign('ukdatum', $ukdatum);
	$smarty->assign('uktext', $uktext);
	$smarty->assign('ubbild', $ubbild);
	
	$smarty->display('rezeptAnzeigen.tpl');
	
	mysqli_close($conn);
	}
?>
