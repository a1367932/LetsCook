<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Registration</title>
</head>
<body>
<div class="container">
	<div id="header"/></div>
	  
		<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
			
	<form action="registration.class.php" method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Vorname</td>
			<td><input type="text" name="vorname" ></td>
		</tr>
		<tr>
			<td>Nachname</td>
			<td><input type="text" name="nachname"></td>
		</tr>
		<tr>
			<td>Geschlecht</td>
			<td> <input type="radio" name="geschlecht" value="weiblich">weiblich</td>
			<td> <input type="radio" name="geschlecht" value="maennlich">m&aumlnnlich</td>
		</tr>
		<tr>
			<td>Geburtsdatum</td>
			<td> <select name="tag" size="1"> 
					<option>Tag</option>
					<script type="text/javascript">
					  	var tage="";
						for (var i = 1; i <= 31; i++) 
								tage=tage+'<option>'+i+'</option>';
						document.write(tage);
					</script>
				</select>
			</td>
			<td> <select name="monat" size="1"> 
					<option>Monat</option>
					<script type="text/javascript">
					  	var monate="";
						for (var i = 1; i <= 12; i++) 
								monate=monate+'<option>'+i+'</option>';
						document.write(monate);
					</script>
				</select>
			</td>
			<td> <select name="jahr" size="1"> 
					<option>Jahr</option>
					<script type="text/javascript">
					  	var jahr="";
						for (var i = 1900; i <= 2015; i++) 
								jahr=jahr+'<option>'+i+'</option>';
						document.write(jahr);
					</script>
				</select>
			</td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td><input type="text" name="strasse" placeholder="Strasse"></td>
			<td><input type="text" name="nummer" placeholder="Hausnummer"></td>
			<td><input type="text" name="plz" placeholder="PLZ"></td>
			<td><input type="text" name="ort" placeholder="Ort"></td>
			<td><input type="text" name="land" placeholder="Land"></td>
		</tr>
		<tr>
			<td>Nutzerdaten</td>
		</tr>
		<tr>
			<td>Benutzername</td>
			<td><input type="text" name="bname"></td>
		</tr>
		<tr>
			<td>Passwort</td>
			<td><input type="password" name="passwort"></td>
			<td><input type="password" name="passwort2"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="email"></td>
		</tr>
		<tr>
			<td>Profilbild (.jpg)</td>
			<td><input type="file" name="bbild" accept="image/*"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="Absenden"></td>
		</tr>
	</table>
	</form>
	</div>
	</div>
	</div>
	</div>
</body>
</html>