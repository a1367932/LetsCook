<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Meine Daten</title>
</head>
<body>
	<form action="meineDaten.class.php" method="POST">
	<table>
		<tr>
			<td><img src="{$bbild}" alt="Profilbild"></td>
		</tr>
		<tr>
			<td>{$bname}</td>
		</tr>
		<tr>
			<td><a href="imageaendern.class.php">Foto &auml;ndern</a></td>
		</tr>
	</table>
	<table>
		<tr>
			<td>{$vorname}</td>
			<td>{$nachname}</td>
		</tr>
		<tr>
			<td>{$alter}</td>
		</tr>
		<tr>
			<td>{$email}</td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td>{$strasse}</td>
			<td>{$nummer}</td>
			<td>{$plz}</td>
			<td>{$ort}</td>
			<td>{$land}</td>
		</tr>
		<tr>
			<td><td><input type="submit" name="meineDatenSubmit" value="Daten &Auml;ndern"></td></td>
		</tr>
	</table>
</body>
</html>