<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	include("dbConnection.class.php");
	session_start();
	if(isset($_SESSION['bid']) && !empty($_SESSION['bid'])) {
		$smarty->assign('session', 'true');
	}
	else{
		$smarty->assign('session', 'false');
	}
?>

<?php

if ( !isset( $_POST['meineRezepteSubmit'] ) ) {

	include("dbConnection.class.php");
	
	//Rezeptdaten der jeweilingen Kategorie auslesen
	$sqlSelect = "SELECT bid, titel, bdatum, bild, count(bbid) AS anzahlBewertung, sum(wert) AS gesamtBewertung
				  FROM beitrag NATURAL LEFT OUTER JOIN bewertung
				  WHERE bname = '".$_SESSION['bid']."'
				  GROUP BY bid";
	$stmt = mysqli_query($conn, $sqlSelect);
	//$singleRow = mysqli_fetch_assoc($stmt);
	
	//Null setzen falls keine Rezepte vorhanden
	$titel[] = null;
	$bild[] = null;
	$bdatum[] = null;
	$bid[] = null;
	$anzSterne[]=null;
	$bewertung[] = null;
	
	while($row = mysqli_fetch_array($stmt))
	{
		$titel[] = $row['titel'];
		$bild[] = $row['bild'];
		$bid[] = $row['bid'];
		$bdatum[] = $row['bdatum'];
		if($row['anzahlBewertung'] != 0) {
			$bewertung[] = ($row['gesamtBewertung'] / (5 * $row['anzahlBewertung'])) * 100;
			$anzSterne[] = round(5 * ($row['gesamtBewertung'] / (5 * $row['anzahlBewertung'])));
		}
		else {
			$bewertung[] = 0;
			$anzSterne[] = 0;
		}
	}
	
	if(isset($titel)) {
		$smarty->assign('bild', $bild);
		$smarty->assign('titel', $titel);
		$smarty->assign('bewertung', $bewertung);
		$smarty->assign('bdatum', $bdatum);
		$smarty->assign('bid', $bid);
		$smarty->assign('anzSterne', $anzSterne);
	}
	else
		$smarty->assign('titel', null);
	
	$smarty->display('meineRezepte.tpl');
	
	mysqli_close($conn);
	
}else{
	header("Location: rezepteBearbeiten.class.php");
}
?>
