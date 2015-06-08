<?php

if ( !isset( $_POST['registrationSubmit'] ) ) {
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	
	$smarty = new Smarty();
	
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	
	$smarty->display('registration.tpl');
}
else {
	include("dbConnection.class.php");
	
	if ($_FILES['bbild']['name']!= null)	{
		$dateityp = GetImageSize($_FILES['bbild']['tmp_name']);
		if($dateityp[2] != 0) {  //handelt es sich um ein Bild
			if($_FILES['bbild']['size'] <  5242880) {  //ist das Bild kleiner als 5 MB
				move_uploaded_file($_FILES['bbild']['tmp_name'], "upload/".$_FILES['bbild']['name']);
				echo "Das Bild wurde Erfolgreich nach upload/".$_FILES['datei']['name']." hochgeladen";
			}
			else
				echo "Das Bild darf nicht größer als 5 MB sein.";
		} else
			echo "Es handelt sich nicht um eine gif bzw. jpg Datei.";
	} else {
		echo "Es wurde kein Profilfbild angegeben.";
		$bbild = null;
	}
	
	
	
	
	
	
	$date = strtotime($_POST['tag']+"/"+$_POST['monat']+"/"+$_POST['jahr']);
	echo $date;
	echo $bbild;
	//Benutzer einfuegen
	$sqlInsert = "INSERT INTO benutzer VALUES('"+$_POST['bname']+"', '"+$_POST['email']+"', '"+$_POST['passwort']+"', '"+$_POST['vorname']+"', '"+$_POST['nachname']+"', '"+$date+"', '"+$_POST['strasse']+"', '"+$_POST['hausnummer']+"', "+$_POST['plz']+", '"+$_POST['ort']+"', '"+$_POST['land']+"', '"+$_POST['geschlecht']+"', null)";
	mysqli_query($conn, $sql);

	
	
		
	
}
?>
