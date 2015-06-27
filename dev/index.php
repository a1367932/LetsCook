<?php

require('Smarty/libs/Smarty.class.php');
require('config/constants.php');

$smarty = new Smarty();

$smarty->setTemplateDir('Smarty/templates');
$smarty->setCompileDir('Smarty/templates_c');
$smarty->setCacheDir('Smarty/cache');
$smarty->setConfigDir('Smarty/configs');

$smarty->assign('login', 'false');
	include("classes/dbConnection.class.php");

	session_start();
	
	
	
	if(isset($_SESSION['loginFail']) && $_SESSION['loginFail'] != null) {
		$_SESSION['loginFail'] = null;
	} else {
		$smarty->assign('loginFail', null);
	}
	
	
	if(isset($_SESSION['bid']) && !empty($_SESSION['bid'])) {
		$smarty->assign('session', 'true');
	}
	else{
		$smarty->assign('session', 'false');
	}
	
	//Alle Rezepte der Kategorie Dessert
	$sqlSelect = "SELECT bid FROM beitrag WHERE kname= 'Dessert'";
	$stmt = mysqli_query($conn, $sqlSelect);				  
	$row_cnt = $stmt->num_rows;
	$smarty->assign('dessert_cnt', $row_cnt);
	
	$sqlSelect = "SELECT bid FROM beitrag WHERE kname= 'Frühstück'";
	$stmt = mysqli_query($conn, $sqlSelect);				  
	$row_cnt = $stmt->num_rows;
	$smarty->assign('frueh_cnt', $row_cnt);
	
	$sqlSelect = "SELECT bid FROM beitrag WHERE kname= 'Hauptspeise'";
	$stmt = mysqli_query($conn, $sqlSelect);				  
	$row_cnt = $stmt->num_rows;
	$smarty->assign('haupt_cnt', $row_cnt);
	
	$sqlSelect = "SELECT bid FROM beitrag WHERE kname= 'Beilage'";
	$stmt = mysqli_query($conn, $sqlSelect);				  
	$row_cnt = $stmt->num_rows;
	$smarty->assign('beilage_cnt', $row_cnt);
	
	$sqlSelect = "SELECT bid FROM beitrag WHERE kname= 'Salat'";
	$stmt = mysqli_query($conn, $sqlSelect);				  
	$row_cnt = $stmt->num_rows;
	$smarty->assign('salat_cnt', $row_cnt);
	
	$sqlSelect = "SELECT bid FROM beitrag WHERE kname= 'Vorspeise'";
	$stmt = mysqli_query($conn, $sqlSelect);				  
	$row_cnt = $stmt->num_rows;
	$smarty->assign('vor_cnt', $row_cnt);
	
	$smarty->display('index.tpl');
?>

