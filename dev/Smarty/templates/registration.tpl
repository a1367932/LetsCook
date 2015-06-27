<html>
<head>
	<title>Registration</title
	
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../src/foundation/js/vendor/jquery.js"></script>
	
	<script type="text/javascript">
				function error() { 
						var passwort= document.getElementById("passwort").value;
						var passwort2= document.getElementById("passwort2").value;
					
					if(passwort != "" && passwort2 != ""){
						if(passwort != passwort2){
							document.getElementById("passwort2").style.border='3px red solid';
							document.getElementById("passwort").style.border='3px red solid';
							document.getElementById("submit").type='button';
							alert(unescape("Die Passw%F6rter sind nicht ident!"))
						}else{
							document.getElementById("passwort2").style.border='';
							document.getElementById("passwort").style.border='';
							document.getElementById("submit").type='submit';
						}
					}else{
						document.getElementById("submit").type='button';
					}
				}
			</script>
			
</head>
<body>

{include file='header_2.tpl'}
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
			<td><input type="text" name="strasse" placeholder="Strasse" required="required"></td>
			<td><input type="number" name="hausnummer" placeholder="Hausnummer" required="required"></td>
			<td><input type="number" name="plz" placeholder="PLZ" required="required"></td>
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
			<td><input type="password" id="passwort" name="passwort" placeholder="Passwort" onchange="error();" required="required"></td>
			<td><input type="password" id="passwort2" name="passwort2" placeholder="Passwort wiederholen" onchange="error();" required="required"></td>
		
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
			<td><input type="button" onclick="error();" id="submit" value="Absenden" name="registrationSubmit"></td>
		
		</tr>
	</table>
	</form>
	</div>
	</div>
	</div>{include file='footer.tpl'}

</body>
</html>