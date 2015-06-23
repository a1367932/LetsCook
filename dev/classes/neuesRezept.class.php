<?php
	require('../Smarty/libs/Smarty.class.php');
	require('../config/constants.php');
	$smarty = new Smarty();
	$smarty->setTemplateDir('../Smarty/templates');
	$smarty->setCompileDir('../Smarty/templates_c');
	$smarty->setCacheDir('../Smarty/cache');
	$smarty->setConfigDir('../Smarty/configs');
	$smarty->display('neuesRezept.tpl');
	session_start();
	if(isset($_SESSION['bid']) && !empty($_SESSION['bid'])) {
		$smarty->assign('session', 'true');
	}
	else{
		$smarty->assign('session', 'false');
	}session_start();
		
	include("dbConnection.class.php");
?>

<?php

if ( isset( $_POST['neuesRezeptSubmit'] ) ) {
	//Speichern und weiterleiten zu Meine rezepte
	
	//Rezept speichern
	//TODO $_Session['bname']
	$sqlInsert = "INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname)
	VALUES ('".$_SESSION['bid']."', '".$_POST['titel']."', SYSDATE(), '".$_POST['btext']."', '".$_POST['titel'].".jpg',
	'".$_POST['zutaten']."', ".$_POST['portion'].", '".$_POST['kname']."')";
	
	//SQL - Anweisung ausführen
	if (mysqli_query($conn, $sqlInsert)) {
		echo "Rezept wurde erfolgreich gespeichert!";
	} else {
		echo "Fehler: " . $sqlInsert . "<br>" . mysqli_error($conn);
	}
	
	//Bild auf den Server hochladen
	$verzeichnis = "../../Uploads/rezeptbilder/";
	
	if ($_FILES['bild']['name']!= null)	{
		$dateityp = GetImageSize($_FILES['bild']['tmp_name']);
		if($dateityp[2] != 0) {  //handelt es sich um ein Bild
			if($_FILES['bild']['size'] <  5242880) {  //ist das Bild kleiner als 5 MB
				move_uploaded_file($_FILES['bild']['tmp_name'], $verzeichnis . $_POST['titel'] .".jpg");
				echo "Das Bild wurde Erfolgreich nach upload/".$_FILES['bild']['name']." hochgeladen";
			}
			else
				echo "Das Bild darf nicht größer als 5 MB sein.";
		} else
			echo "Es handelt sich nicht um eine gif bzw. jpg Datei.";
	} else
		echo "Es wurde kein Produktbild angegeben.";
	
	mysqli_close($conn);
	
// 	header("Location: meineRezepte.class.php");
}
?>
