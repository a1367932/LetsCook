<?php
if ( !( $_POST['password']!=null ) ) {
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');

	$smarty = new Smarty();

	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	$smarty->assign('login', 'false');
	$smarty->display('index.tpl');
} else{
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	$smarty->assign('login', 'true');
	
	include("dbConnection.class.php");
	//Benutzerdaten auslesen
	$sqlSelect = "SELECT * FROM benutzer WHERE bname = '".$_POST['username']."' AND passwort= '".$_POST['password']."'";
	$stmt = mysqli_query($conn, $sqlSelect);
	$singleRow = mysqli_fetch_assoc($stmt);
	if($singleRow!=null){//Wenn der Benutzer in der Datenbank gespeichert ist so kehrt man zur index seite mit header2 zurück
		$_SESSION['bid']=$singleRow['bname'];//Session für die bid
		$smarty->display('index.tpl');
	}else 
		echo "Nutzerdaten falsch!";
}

?>
