<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Daten &Aumlndern</title>
</head>
<body>
	<form action="datenBearbeiten.class.php" method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Vorname</td>
			<td><input type="text" name="vorname" value="{$vorname}" ></td>
		</tr>
		<tr>
			<td>Nachname</td>
			<td><input type="text" name="nachname" value="{$nachname}"></td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td><input type="text" name="strasse" value="{$strasse}"></td>
			<td><input type="text" name="nummer" value="{$nummer}"></td>
			<td><input type="text" name="plz" value="{$plz}"></td>
			<td><input type="text" name="ort" value="{$ort}"></td>
			<td><input type="text" name="land" value="{$land}"></td>
		</tr>
		<tr>
			<td>Nutzerdaten</td>
		</tr>
		<tr>
			<td>Passwort</td>
			<td><input type="password" name="passwort"></td>
			<td><input type="password" name="passwort2"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="email" value="{$email}"></td>
		</tr>
		<tr>
			<td><input type="submit" name="bearbeitenSubmit" value="Absenden"></td>
		</tr>
	</table>
	</form>
</body>
</html>