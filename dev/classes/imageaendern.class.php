<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	include("dbConnection.class.php");
	$smarty->display('imageaendern.tpl');
	session_start();
	if(isset($_SESSION['bid']) && !empty($_SESSION['bid'])) {
		$smarty->assign('session', 'true');
	}
	else{
		$smarty->assign('session', 'false');
	}
?>


<?php
if( isset( $_POST['imageaendernSubmit'] ) ){
	//Neues Image Speichern
	//und kehre zu MEINE DATEN zurück
	
	//Bild auf den Server hochladen
	$verzeichnis = "../../Uploads/profilBilder/";
	
	if ($_FILES['bbild']['name']!= null)	{
		$dateityp = GetImageSize($_FILES['bbild']['tmp_name']);
		if($dateityp[2] != 0) {  //handelt es sich um ein Bild
			if($_FILES['bbild']['size'] <  5242880) {  //ist das Bild kleiner als 5 MB
				move_uploaded_file($_FILES['bbild']['tmp_name'], $verzeichnis . "". $_SESSION['bid'] .".jpg");   //Profilbild wird nach dem Usernamen benannt => eindeutig
				echo "Das Bild wurde Erfolgreich nach ". $verzeichnis ."". $_FILES['bbild']['name']." hochgeladen";
			}
			else
				echo "Das Bild darf nicht größer als 5 MB sein.";
		} else
			echo "Es handelt sich nicht um eine gif bzw. jpg Datei.";
	} else
		echo "Es wurde kein Profilfbild angegeben.";
	
	
	include("dbConnection.class.php");
	
	//Benutzer Ändern
	$sqlUpdate = "UPDATE benutzer SET bbild = '". $_SESSION['bid'] .".jpg' WHERE bname = '".$_SESSION['bid']."'"; 
	
	if ($conn->query($sqlUpdate) === false)
		echo "Ein Fehler ist beim Updaten aufgetretten: " . $conn->error;
	
	mysqli_close($conn);
	
	
	header("Location: meineDaten.class.php");
}

?>
