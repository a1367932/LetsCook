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
		
		{section name=rezepte loop=$titel}
		<a href="rezeptAnzeigen.class.php?bid={$bid[rezepte]}">
		<table>
			<tr>
				<td><img src="../../Uploads/{$bild[rezepte]}" alt="Rezeptbild" height="150" width="150"></td>
				<td> {$titel[rezepte]}</td>
			</tr>
			<tr>
				<td> {$bewertung[rezepte]}</td>
				<td> {$btext[rezepte]}</td>	
			</tr>
		</table>
		</a>
	    {/section}
	
	</form>
	  </div></div></div>
</body>
</html>
