<html>
<head>
	<title>Registration</title
	
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../js/foundation.min.js"></script>
	<link rel ="stylesheet" href="../src/foundation/css/foundation.css"></link>
</head>
<body>

<div class="row">
	<div class="large-12 columns">
	  <div class="panel">
		<div class="small-5 columns">
		  <h3>Projektname</h3>
		</div>
		<form  action="index.class.php" method="POST">
		  <div class="large-3 columns">
			<input type="text" name="username" placeholder="Username" />
		  </div>
		  <div class="large-3 columns">
			<input type="password" name="password" placeholder="Password" />
		  </div>
			<div class="large-1 columns">
			  <input type="image" src="../src/images/foundation-icons/svgs/fi-fast-forward.svg" alt="Submit" name="loginSubmit" width="35em" height="35em"/>
			</div>
		</form>
		<div class="row">
		  <div class="small-3 right columns">
			<i><h4><small>Registriere dich <a href="classes/registration.class.php">hier</a>!</small></h3></i>
			{if {$session} neq 'false'}
			  <a href="logout.class.php">LOGOUT</a><br/>
			  <a href="meineDaten.class.php">Meine Daten</a><br/>
			  <a href="meineRezepte.class.php">Meine Rezepte</a><br/>
			  <a href="neuesRezept.class.php">neues Rezept</a>
			{/if}
		  </div>
		</div>
	  </div>
	</div>
</div>
		<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
	<form action="registration.class.php" method="POST" enctype="multipart/form-data" >
	<table>
		<tr>
			<td>Vorname</td>
			<td><input type="text" name="vorname" required="required"></td>
		</tr>
		<tr>
			<td>Nachname</td>
			<td><input type="text" name="nachname" required="required"></td>
		</tr>
		<tr>
			<td>Geschlecht</td>
			<td> <input type="radio" name="geschlecht" value="weiblich" required="required">weiblich</td>
			<td> <input type="radio" name="geschlecht" value="maennlich" required="required">m&aumlnnlich</td>
		</tr>
		<tr>
			<td>Geburtsdatum</td>
			<td> <select name="tag" size="1" required="required"> 
					<optgroup label="Tag" selected>
					<option disabled selected style='display:none;'>Tag</option>
					<script type="text/javascript">
					  	var tage="";
						for (var i = 1; i <= 31; i++) 
								tage=tage+'<option>'+i+'</option>';
						document.write(tage);
					</script>
					</optgroup>
				</select>
			</td>
			<td> <select name="monat" size="1" required="required"> 
					<optgroup label="Monat" selected>
					<option disabled selected style='display:none;'>Monat</option>
					<script type="text/javascript">
					  	var monate="";
						for (var i = 1; i <= 12; i++) 
								monate=monate+'<option>'+i+'</option>';
						document.write(monate);
					</script>
					</optgroup>
				</select>
			</td>
			<td> <select name="jahr" size="1" required="required"> 
					<optgroup label="Jahr" selected>
					<option disabled selected style='display:none;'>Jahr</option>
					<script type="text/javascript">
					  	var jahr="";
						for (var i = 1900; i <= 2015; i++) 
								jahr=jahr+'<option>'+i+'</option>';
						document.write(jahr);
					</script>
					</optgroup>
				</select>
			</td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td><input type="text" name="strasse" placeholder="Strasse" required="required"  /></td>
			<td><input type="text" name="hausnummer" placeholder="Hausnummer" required="required"></td>
			<td><input type="text" name="plz" placeholder="PLZ" required="required"></td>
			<td><input type="text" name="ort" placeholder="Ort" required="required"></td>
			<td><input type="text" name="land" placeholder="Land" required="required"></td>
		</tr>
		<tr>
			<td>Nutzerdaten</td>
		</tr>
		<tr>
			<td>Benutzername</td>
			<td><input type="text" name="bname" required="required"></td>
		</tr>
		<tr>
			<td>Passwort</td>
			<td><input type="password" name="passwort" required="required"></td>
			<td><input type="password" name="passwort2" required="required"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="email" required="required"></td>
		</tr>
		<tr>
			<td>Profilbild (.jpg)</td>
			<td><input type="file" name="bbild" accept="image/*"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="Absenden" name="registrationSubmit"></td>
		
		</tr>
	</table>
	</form>
	</div>
	</div>
	</div>

</body>
</html>