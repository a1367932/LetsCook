<html>
<head>
	<title>Meine Daten</title>
		
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
	<form action="meineDaten.class.php" method="POST">
	<table>
		<tr>
			<td><img src="../../Uploads/{$bbild}" alt="Profilbild" height="150" width="150"></td>
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
</body>
</html>