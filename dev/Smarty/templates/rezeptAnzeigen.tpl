<html>
<head>
  <script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../js/foundation.min.js"></script>
	<link rel ="stylesheet" href="../src/foundation/css/foundation.css"></link>
	<title>Profilbild &Aumlndern</title>
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
				<table>
					<tr>
						<td><img src="../../Uploads/rezeptBilder/{$bild}" alt="Rezeptbild" height="150" width="250"></td>
					</tr>
					<tr>
						<td>{$durchschnittBewertungen} in Prozent</td>
					</tr>
					<tr>
						<td>{$portion} Portionen</td>
					</tr>
				</table>
				<table>
					<tr>
						<td>Zutaten:</td>
						<td>{$zutaten}</td>
					</tr>
					
					<tr>
						<td>Zubereitung:</td>
						<td>{$btext}</td>
					</tr>
				</table>
				
				Kommentare:
				<table>
					{section name=kommentar loop=$kid}
			 				<tr>
			 					<td>{$ktext[kommentar]}<td>
			 				
			 				
			 				{if isset($ukid[kommentar])}
			 					</tr>	
			 					<tr>
			 						<td style="color: red">{$uktext[kommentar]}<td>
			 					</tr>	
			 				{else}
			 					<td>Kommentieren</td>
			 					</tr>	
			 				{/if}
			 				
					{/section}
				</table>
	
			</div>
		</div>
	</div>

			
	
</body>
</html>