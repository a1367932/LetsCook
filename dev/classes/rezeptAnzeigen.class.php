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
		//!!!!Hier kommt das Speichern des Unterkommentars!!!!!!
		$kid=$_GET['neuesUk'];
		$uktext=$_POST['uktext'];
		$bid=$_GET['bid'];
		
		//Unterkommentar speichern
		$sqlInsertKommentar = "INSERT INTO kommentar (kdatum, ktext, ukid) VALUES (SYSDATE(), '". $uktext ."', ". $kid .")";
		
		//SQL - Anweisung ausführen
		if (mysqli_query($conn, $sqlInsertKommentar)) {
			$smarty->assign('reg_msg', 'Erfolgreich registriert');
		} else {
			$smarty->assign('reg_msg', 'Fehler:' . $sqlInsertKommentar . '<br>' . mysqli_error($conn));
		}
		
		//GetKommentarID - nicht Threadsafe!!!
		$sqlSelectKid = "SELECT max(kid) AS kid from kommentar";
		$stmt = mysqli_query($conn, $sqlSelectKid);
		$singleRow = mysqli_fetch_assoc($stmt);
		
		//Erstellt speichern
		$sqlInsertErstellt = "INSERT INTO erstellt VALUES (". $bid .", ". $singleRow['kid'] .", '". $_SESSION['bid'] ."')";
		
		//SQL - Anweisung ausführen
		if (mysqli_query($conn, $sqlInsertErstellt)) {
			$smarty->assign('reg_msg', 'Erfolgreich registriert');
		} else {
			$smarty->assign('reg_msg', 'Fehler:' . $sqlInsertErstellt . '<br>' . mysqli_error($conn));
		}
		
		
		//Neu laden der Seite
		header("Location: rezeptAnzeigen.class.php?bid=$bid");
	}else if ( isset( $_POST['neuesK'] ) ){
		//!!!!!!Hier kommt das Speichern eines neuen Kommentars her!!!!!!!
		$ktext=$_POST['ktext'];
		$bid=$_GET['bid'];
		echo "Unterkommentar HauptKommentar ID: Neue Id vergeben! Benutzername: Aus der Session auslesen?? Kommentardatum: Akktuelles date Kommentartext: $ktext";
		
		//Kommentar speichern
		$sqlInsertKommentar = "INSERT INTO kommentar (kdatum, ktext) VALUES (SYSDATE(), '". $ktext ."')";
		
		//SQL - Anweisung ausführen
		if (mysqli_query($conn, $sqlInsertKommentar)) {
			$smarty->assign('reg_msg', 'Erfolgreich registriert');
		} else {
			$smarty->assign('reg_msg', 'Fehler:' . $sqlInsertKommentar . '<br>' . mysqli_error($conn));
		}
		
		//GetKommentarID - nicht Threadsafe!!!
		$sqlSelectKid = "SELECT max(kid) AS kid from kommentar";
		$stmt = mysqli_query($conn, $sqlSelectKid);
		$singleRow = mysqli_fetch_assoc($stmt);
		
		//Erstellt speichern
		$sqlInsertErstellt = "INSERT INTO erstellt VALUES (". $bid .", ". $singleRow['kid'] .", '". $_SESSION['bid'] ."')";
		
		//SQL - Anweisung ausführen
		if (mysqli_query($conn, $sqlInsertErstellt)) {
			$smarty->assign('reg_msg', 'Erfolgreich registrtiert');
		} else {
			$smarty->assign('reg_msg', 'Fehler:' . $sqlInsertErstellt . '<br>' . mysqli_error($conn));
		}
		
		//Neu laden der Seite
		header("Location: rezeptAnzeigen.class.php?bid=$bid");
	
	}else if ( isset( $_GET['wert'] ) ){
		$bid=$_GET['bid'];
		$wert=$_GET['wert'];
		$sqlInsertBewertung = "INSERT INTO bewertung (bid, anzahl, wert) VALUES (". $bid .", 1, ".$wert.")";
		//SQL - Anweisung ausführen
		if (mysqli_query($conn, $sqlInsertBewertung)) {
			header("Location: rezeptAnzeigen.class.php?bid=$bid");
		} else {
			$smarty->assign('reg_msg', 'Fehler:' . $sqlInsertBewertung . '<br>' . mysqli_error($conn));
		}
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
		$bewertung = ($singleRow['gesamtBewertung'] / (5 * $singleRow['anzahlBewertung'])) * 100;
		$anzSterne = round(5 * ($singleRow['gesamtBewertung'] / (5 *$singleRow['anzahlBewertung'])));
	}
	else{
		$bewertung = 0;
		$anzSterne = 0;
	}
	
	$smarty->assign('portion', $singleRow['portion']);
	$smarty->assign('zutaten', $singleRow['zutaten']);
	$smarty->assign('btext', $singleRow['btext']);
	$smarty->assign('bid', $_GET['bid']);
	$smarty->assign('bewertung', $bewertung);
	$smarty->assign('anzSterne', $anzSterne);
	
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
