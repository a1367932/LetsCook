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

	if ( !( $_POST['password']!=null ) ) {
		$smarty->assign('login', 'false');
		$_SESSION['loginFail'] = "Bitte geben Sie ein Passwort ein!";
	}
	else{
		$smarty->assign('login', 'true');
		include("dbConnection.class.php");
		//Benutzerdaten auslesen
		$sqlSelect = "SELECT * FROM benutzer WHERE bname = '".$_POST['username']."' AND passwort= '".$_POST['password']."'";
		$stmt = mysqli_query($conn, $sqlSelect);
		$singleRow = mysqli_fetch_assoc($stmt);
	if($singleRow!=null){//Wenn der Benutzer in der Datenbank gespeichert ist so kehrt man zur index seite mit header2 zurück
		$_SESSION['bid']=$singleRow['bname'];//Session für die bid
	}else 
		$_SESSION['loginFail'] = "Benutzername oder Passwort falsch!";
	}
	header("Location: ../index.php");
	//$smarty->display('dev/index.php');
?>


