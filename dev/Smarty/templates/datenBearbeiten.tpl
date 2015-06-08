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
			<td><input type="text" id="vorname" value="{$vorname}" ></td>
		</tr>
		<tr>
			<td>Nachname</td>
			<td><input type="text" id="nachname" value="{$nachname}"></td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td><input type="text" id="strasse" value="{$strasse}"></td>
			<td><input type="text" id="nummer" value="{$nummer}"></td>
			<td><input type="text" id="plz" value="{$plz}"></td>
			<td><input type="text" id="ort" value="{$ort}"></td>
			<td><input type="text" id="land" value="{$land}"></td>
		</tr>
		<tr>
			<td>Nutzerdaten</td>
		</tr>
		<tr>
			<td>Passwort</td>
			<td><input type="password" id="passwort"></td>
			<td><input type="password" id="passwort2"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" id="email" value="{$email}"></td>
		</tr>
		<tr>
			<td>Profilbild (.jpg)</td>
			<td><input type="file" id="bbild" accept="image/*" value="{$bbild}"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="Absenden"></td>
		</tr>
	</table>
	</form>
</body>
</html>