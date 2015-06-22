<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	
	
	include("dbConnection.class.php");
	
	//Rezeptdaten der jeweiligen Kategorie auslesen
	$sqlSelect = "SELECT bid, titel, bdatum, bild, count(bbid) AS anzahlBewertung, sum(wert) AS gesamtBewertung
				  FROM beitrag NATURAL LEFT OUTER JOIN bewertung
				  WHERE kname= '". $_GET['kategorie'] ."'
				  GROUP BY bid";
	
	$stmt = mysqli_query($conn, $sqlSelect);
	
	while($row = mysqli_fetch_array($stmt))
	{
		$titel[] = $row['titel'];
		$bild[] = $row['bild'];
		$bdatum[] = $row['bdatum'];
		$bid[] = $row['bid'];
		
		if($row['anzahlBewertung'] != 0) {
			$bewertung[] = ($row['gesamtBewertung'] / (5 * $row['anzahlBewertung'])) * 100;
			$anzSterne[] = round(5 * ($row['gesamtBewertung'] / (5 * $row['anzahlBewertung'])));
		} 
		else {
			$bewertung[] = 0;
			$anzSterne[] = 0;
		}
		
		
	}
	
	$smarty->assign('bild', $bild);
	$smarty->assign('titel', $titel);
	$smarty->assign('bewertung', $bewertung);
	$smarty->assign('bdatum', $bdatum);
	$smarty->assign('bid', $bid);
	$smarty->assign('anzSterne', $anzSterne);
	
	
	$smarty->display('rezepteKategorieAnzeigen.tpl');
	
	mysqli_close($conn);
?>
