<html>
<head>
 	
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../js/foundation.min.js"></script>
	<link rel ="stylesheet" href="../src/foundation/css/foundation.css"></link>
	<title>Neues Rezept</title>
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
	<form action="neuesRezept.class.php" method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Rezeptname</td>
			<td><input type="text" name="titel" ></td>
		</tr>
		<tr>
			<td>Rezeptbild (.jpg, max. 5MB)</td>
			<td><input type="file" name="bild" accept="image/*"> </td>
		</tr>
		<tr>
			<td>Zutaten</td>
			<td><textarea rows="4" cols="50" name="zutaten">Trennen Sie die einzelnen Zutaten mit einem Beistrich! (90g Butter, 1l Wasser) </textarea> </td>
		</tr>
		<tr>
			<td>Portitonen</td>
			<td><select name="portion" size="1"> 
					<script type="text/javascript">
					  	var portionen="";
						for (var i = 1; i <= 10; i++) 
								portionen=portionen+'<option>'+i+'</option>';
						document.write(portionen);
					</script>
				</select> Personen</td>
		</tr>
		<tr>
			<td>Zubereitungsanweisungen</td>
			<td><textarea rows="4" cols="50" name="btext">Erl&auml;utern Sie die Zubereitungsschritte!</textarea> </td>
		</tr>
		<tr>
			<td>Kategorie w&auml;hlen</td>
			<td><select name="kname" size="1"> 
					<option>Fr&uuml;hst&uuml;ck</option>
					<option>Vorspeise</option>
					<option>Hauptspeise</option>
					<option>Dessert</option>
					<option>Beilage</option>
					<option>Salat</option>
				</select></td>
		</tr>
		<tr>
			<td><input type="submit" value="Speichern" name="neuesRezeptSubmit"></td>
		</tr>
	</table>
	</form>
	  </div></div></div>

</body>
</html>