<html>
<head>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../js/foundation.min.js"></script>
	<link rel ="stylesheet" href="../src/foundation/css/foundation.css"></link>
 
	<title>Daten &Aumlndern</title>
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
	
			</div>
		  </div>
   </div>
</body>
</html>