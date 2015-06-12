<html>
  <head>
	<title>Startseite</title>
	<link rel ="stylesheet" href="src/foundation/css/foundation.css"></link>
	<script src="src/foundation/js/vendor/fastclick.js"></script>
	<script src="js/foundation.min.js"></script>
  </head>
  <body>
  <div class="row">
	<div class="large-12 columns">
	  <div class="panel">
		<div class="small-5 columns">
		  <h3>Projektname</h3>
		</div>
		<form  action="classes/index.class.php" method="POST">
		  <div class="large-3 columns">
			<input type="text" name="username" placeholder="Username" />
		  </div>
		  <div class="large-3 columns">
			<input type="password" name="password" placeholder="Password" />
		  </div>
			<div class="large-1 columns">
			  <input type="image" src="src/images/foundation-icons/svgs/fi-fast-forward.svg" alt="Submit" name="loginSubmit" width="35em" height="35em"/>
			</div>
		</form>
		<div class="row">
		  <div class="small-3 right columns">
			<i><h4><small>Registriere dich <a href="classes/registration.class.php">hier</a>!</small></h3></i>
			{if {$session} neq 'false'}
			  <a href="logout.class.php">LOGOUT</a><br/>
			  <a href="classes/meineDaten.class.php">Meine Daten</a><br/>
			  <a href="classes/meineRezepte.class.php">Meine Rezepte</a><br/>
			  <a href="classes/neuesRezept.class.php">neues Rezept</a>
			{/if}
		  </div>
		</div>
	  </div>
	</div>
  </div>

	  
		<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
			  <b>Kochforen</b>
				<p>Sie haben Fragen rund um Kochrezepte, Zutaten oder Zubereitung sowie Ern&auml;hrung? Vom kompletten Men&uuml; bis
				zum Dessert finden Sie hier passende Rezepte z.B. f&uuml;r Party, Kinder oder Di&auml;ten von Weight Watchers bis SIS.</p>
				
				<table>
				  <tbody>
					<tr>
					  <td><img src="/fruestueck.jpg" alt="Fr&uuml;st&uuml;ck"></td>
					  <td width="50%"><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Frühstück">Fr&uuml;st&uuml;ck</a></td>
					  <td width="50px">0</td>
					   <td><img src="/vorspeise.jpg" alt="Vorspeise"></td>
					  <td width="50%"><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Vorspeise">Vorspeise</td>
					  <td width="50px">0</td>
					</tr>
					<tr>
					  <td><img src="/hauptspeise.jpg" alt="Hauptspeise"></td>
					  <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Hauptspeise">Hauptspeise</a></td>
					  <td>0</td>
					   <td><img src="/dessert.jpg" alt="Dessert"></td>
					   <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Dessert">Dessert</a></td>
					  <td>0</td>
					</tr>
					<tr>
					   <td><img src="/beilage.jpg" alt="Beilage"></td>
					  <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Beilage">Beilage</a></td>
					  <td>0</td>
					   <td><img src="/salat.jpg" alt="Salat"></td>
					   <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Salat">Salat</a></td>
					  <td>0</td>
					</tr>
				  </tbody>
				</table>

			</div>
		  </div>
		</div>
  </body>
</html>
