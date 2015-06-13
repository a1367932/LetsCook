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
					<thead>
						<tr>
			     			<th width="20%">Bild</th>
	     					<th width="65%">Name / Wertung</th>
	     					<th width="15%">Datum</th>
	 			 		</tr>
 					</thead>
 				</table>
 				
 				<!-- Tabelle der Rezepte wird erzgeugt -->
 				{section name=rezepte loop=$titel}
 					<a href="rezeptAnzeigen.class.php?bid={$bid[rezepte]}">
		 				<table>
		 					<tbody>
			 					<tr>
									<td width="20%"><img src="../../Uploads/rezeptBilder/{$bild[rezepte]}" alt="Profilbild" height="150" width="150"></td>
									<td width="65%" valign="top">{$titel[rezepte]} <br/> 
														<!-- Hier werden die Sterne angezeigt -->
													{for $foo=1 to {$anzSterne[rezepte]}}
		                    								<div class="large-1 column left">
				                    							<div class="stern">
		                    										<img alt="stern" src="../src/images/Stern.png">
	                    										</div>
	                										</div>
													{/for}
													von 5
									</td>
									<td width="15%" valign="top"> {$bdatum[rezepte]}</td>
								</tr>		
					    	</tbody>
						</table>
					</a>
				{/section}
			
			</div>
		</div>
	</div>
</body>
</html>