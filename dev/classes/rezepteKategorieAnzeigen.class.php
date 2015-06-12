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
	//$singleRow = mysqli_fetch_assoc($stmt);
	while($row = mysqli_fetch_array($stmt))
	{
		$titel[] = $row['titel'];
		$bild[] = $row['bild'];
		$btext[] = $row['btext'];
		$bid[] = $row['bid'];
		//$bewertung[] = $row['bewertung'];
		$bewertung[]=0;
	}
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
	
	$smarty->assign('bild', $bild);
	$smarty->assign('titel', $titel);
	$smarty->assign('bewertung', $bewertung);
	$smarty->assign('btext', $btext);
	$smarty->assign('bid', $bid);
	
	$smarty->display('rezepteKategorieAnzeigen.tpl');
	
	mysqli_close($conn);
?>
