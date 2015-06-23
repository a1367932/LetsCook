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
if ( !isset( $_POST['bearbeitenSubmit'] ) ) {
	
	
	//Benutzerdaten auslesen
	$sqlSelect = "SELECT * FROM benutzer WHERE bname = '".$_SESSION['bid']."'";
	$stmt = mysqli_query($conn, $sqlSelect);
	$singleRow = mysqli_fetch_assoc($stmt);

	$smarty->assign('vorname', $singleRow['vorname']);
	$smarty->assign('nachname', $singleRow['nachname']);
	$smarty->assign('strasse', $singleRow['strasse']);
	$smarty->assign('nummer', $singleRow['hausnummer']);
	$smarty->assign('plz', $singleRow['plz']);
	$smarty->assign('ort', $singleRow['ort']);
	$smarty->assign('land', $singleRow['land']);
	$smarty->assign('email', $singleRow['email']);
	$smarty->display('datenBearbeiten.tpl');
	
	mysqli_close($conn);
}
elseif ( isset( $_POST['bearbeitenSubmit'] ) ){
	//Speichern der Ändernungen und weiterleiten zu Meine Daten

	
	//Benutzer Ändern
	$sqlUpdate = "UPDATE benutzer SET email = '".$_POST['email']."', 
									  passwort = '".$_POST['passwort']."', 
									  vorname = '".$_POST['vorname']."', 
									  nachname = '".$_POST['nachname']."', 
									  strasse = '".$_POST['strasse']."', 
									  hausnummer = '".$_POST['nummer']."', 
									  plz = ".$_POST['plz'].", 
									  ort = '".$_POST['ort']."', 
									  land = '".$_POST['land']."' 
									  WHERE bname = '".$_SESSION['bid']."'";
	
	if ($conn->query($sqlUpdate) === false)
		echo "Ein Fehler ist beim Updaten aufgetretten: " . $conn->error;
	
	mysqli_close($conn);
	header("Location: meineDaten.class.php");
}
?>
