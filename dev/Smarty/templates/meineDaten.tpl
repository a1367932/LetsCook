<html>
  <head>
	<title>Meine Daten</title>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../src/foundation/js/vendor/jquery.js"></script>
  </head>
  <body>

{include file='header_2.tpl'}

<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
	<form action="meineDaten.class.php" method="POST">
	<table>
		<tr>
			<td><img src="../../Uploads/profilBilder/{$bbild}" alt="Profilbild" height="150" width="150"></td>
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
	</form>
			</div>
		  </div>
</div>

{include file='footer.tpl'}
</body>
</html>