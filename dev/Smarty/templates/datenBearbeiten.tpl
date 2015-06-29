<html>
<head>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../src/foundation/js/vendor/jquery.js"></script>

	<title>Daten &Aumlndern</title>
</head>
<body>
  {include file='header_2.tpl'}
   <div class="row">
		  <div class="large-12 columns">
			<div class="panel">
	<form action="datenBearbeiten.class.php" method="POST" enctype="multipart/form-data">
	<table>
	  <tr>
			<td colspan="6" style="text-align: center"><b>Personelle Daten</b></td>
		</tr>
		<tr>
			<td>Vorname</td>
			<td><input type="text" name="vorname" value="{$vorname}" required="required"></td>
		</tr>
		<tr>
			<td>Nachname</td>
			<td><input type="text" name="nachname" value="{$nachname}" required="required"></td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td><input type="text" name="strasse" value="{$strasse}" required="required"></td>
			<td><input type="text" name="nummer" value="{$nummer}" required="required"></td>
			<td><input type="text" name="plz" value="{$plz}" required="required"></td>
			<td><input type="text" name="ort" value="{$ort}" required="required"></td>
			<td><input type="text" name="land" value="{$land}" required="required"></td>
		</tr>
		<tr>
			<td colspan="6" style="text-align: center"><b>Nutzerdaten</b></td>
		</tr>
		<tr>
			<td>Passwort</td>
			<td><input type="password" name="passwort" required="required"></td>
			<td><input type="password" name="passwort2" required="required"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="email" value="{$email}" required="required"></td>
		</tr>
		<tr>
			<td><input type="submit" name="bearbeitenSubmit" value="Absenden"></td>
		</tr>
	</table>
	</form>
	
			</div>
		  </div>
   </div>
   {include file='footer.tpl'}
</body>
</html>