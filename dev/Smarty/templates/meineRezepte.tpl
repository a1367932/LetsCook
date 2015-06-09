<html>
<head>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../js/foundation.min.js"></script>
	<link rel ="stylesheet" href="../src/foundation/css/foundation.css"></link>
	<title>Meine Daten</title>
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
	<form action="meineRezepte.class.php" method="POST">
		<table>
		<!-- Anzeigen der Liste (Smarty array)
	<script type="text/javascript">
	var ausgabe="as";
		for (var i = 0; i <= {$bild}.length; i++){
			ausgabe=ausgabe+'<tr>
					<input type="hidden" name="bid" value="{$bid['+i+']}">
					<td><img src="{$bild['+i+']}" alt="RezeptBild"></td>
				</tr>
				<tr>
					<td>{$titel['+i+']}</td>
				</tr>
				<tr>
					<td><td><input type="submit" name="reazeptBearbeitenSubmit" value="Bearbeiten"></td></td>
				</tr>
				<tr>
					<td><a href="rezeptloeschen.class.php?bild={$bild['+i+']}">X</a></td></td>
				</tr>
			';
		}
		document.write(ausgabe);
	</script>
	 -->
		</table>
	</form>
	  </div></div></div>
</body>
</html>
