<?php
if ( !isset( $_POST['rezeptBearbeitenSubmit'] ) ) {
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
	
	
	//Benutzerdaten auslesen
	$sqlSelect = "SELECT * FROM beitrag WHERE bid = '".$_GET['bid']."'";
	$stmt = mysqli_query($conn, $sqlSelect);
	$singleRow = mysqli_fetch_assoc($stmt);

	$smarty->assign('titel', $singleRow['titel']);
	$smarty->assign('btext', $singleRow['btext']);
	//Hier muss bei dem string zuerst die ��s in und uumls umgewandelt werden
	$kname=str_replace("ü", "&uuml;", $singleRow['kname']);
	$smarty->assign('kname', $kname);
	$smarty->assign('bild', $singleRow['bild']);
	$smarty->assign('zutaten', $singleRow['zutaten']);
	$smarty->assign('portion', $singleRow['portion']);
	$smarty->display('rezeptBearbeiten.tpl');
}
elseif ( isset( $_POST['rezeptBearbeitenSubmit'] ) ) {
	
	//Bild auf den Server hochladen
	$verzeichnis = "../../Uploads/rezeptbilder/";
	
	if ($_FILES['bild']['name']!= null)	{
		$dateityp = GetImageSize($_FILES['bild']['tmp_name']);
		if($dateityp[2] != 0) {  //handelt es sich um ein Bild
			if($_FILES['bild']['size'] <  5242880) {  //ist das Bild kleiner als 5 MB
				move_uploaded_file($_FILES['bild']['tmp_name'], $verzeichnis . $_POST['titel']. ".jpg");
				echo "Das Bild wurde Erfolgreich nach upload/".$_FILES['bild']['name']." hochgeladen";
			}
			else
				echo "Das Bild darf nicht größer als 5 MB sein.";
		} else
			echo "Es handelt sich nicht um eine gif bzw. jpg Datei.";
	} else
		echo "Es wurde kein Rezeptbild angegeben.";
	
	
	//Speichern der Ändernungen und weiterleiten zu Meine Daten
	include("dbConnection.class.php");
	
	//Benutzer Ändern
	$sqlUpdate = "UPDATE beitrag SET titel = '".$_POST['titel']."',
									 btext = '".$_POST['btext']."',";
	
	if ($_FILES['bild']['name']!= null)
		$sqlUpdate .= "bild = '".$_POST['titel'].".jpg',";
		
	$sqlUpdate .= "zutaten = '".$_POST['zutaten']."',
				   portion = '".$_POST['portion']."'
				   WHERE bid = '".$_GET['bid']."'";
	
	if ($conn->query($sqlUpdate) === false)
		echo "Ein Fehler ist beim Updaten aufgetretten: " . $conn->error;
	
	mysqli_close($conn);
	
	
	header("Location: meineRezepte.class.php");
}
?>
