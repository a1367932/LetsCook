<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');

	session_start();
	if(isset($_SESSION['bid']) && !empty($_SESSION['bid'])) {
		$smarty->assign('session', 'true');
	}
	else{
		$smarty->assign('session', 'false');
	}
?>

<?php
if ( !isset( $_POST['registrationSubmit'] ) ) {
	$smarty->assign('reg_msg', 'Hier gibt es nichts zu sehen');
	}
	elseif ( isset( $_POST['registrationSubmit'] ) ){

	include("dbConnection.class.php");
	$geburtsdatum = $_POST['jahr']."-".$_POST['monat']."-".$_POST['tag'];

	//Benutzer einfuegen
	$sqlInsert = "INSERT INTO benutzer VALUES('".$_POST['bname']."', '".$_POST['email']."', '".$_POST['passwort']."', '".$_POST['vorname']."', '".$_POST['nachname']."', '".$geburtsdatum."', '".$_POST['strasse']."', '".$_POST['hausnummer']."', ".$_POST['plz'].", '".$_POST['ort']."', '".$_POST['land']."', '".$_POST['geschlecht']."', ";
	
	//wurde ein Profilbild angegeben oder nicht
	if ($_FILES['bbild']['name']!= null)
		$sqlInsert .= "'".$_POST['bname'].".jpg')";
	else
		$sqlInsert .= "null)";
	
	//SQL - Anweisung ausführen
	if (mysqli_query($conn, $sqlInsert)) {
		$smarty->assign('reg_msg', 'Erfolgreich registrtiert');
	} else {
	    $smarty->assign('reg_msg', 'Fehler:' . $sqlInsert . '<br>' . mysqli_error($conn));
	}
	//Bild auf den Server hochladen
	$verzeichnis = "../../Uploads/profilBilder/";
	
	if ($_FILES['bbild']['name']!= null)	{
		$dateityp = GetImageSize($_FILES['bbild']['tmp_name']);
		if($dateityp[2] != 0) {  //handelt es sich um ein Bild
			if($_FILES['bbild']['size'] <  5242880) {  //ist das Bild kleiner als 5 MB
				move_uploaded_file($_FILES['bbild']['tmp_name'], $verzeichnis . $_POST['bname'] .".jpg");   //Profilbild wird nach dem Usernamen benannt => eindeutig
				$smarty->assign('reg_msg', 'Das Bild wurde Erfolgreich nach upload/'.$_FILES['bbild']['name'].' hochgeladen');
			}
			else
				$smarty->assign('reg_msg', 'Das Bild darf nicht größer als 5 MB sein.');
		} else
			$smarty->assign('reg_msg', 'Es handelt sich nicht um eine gif bzw. jpg Datei.');
	} else
		$smarty->assign('reg_msg', 'Es wurde kein Profilfbild angegeben.');
	
	mysqli_close($conn);
}

$smarty->display('registration.tpl');
?>
