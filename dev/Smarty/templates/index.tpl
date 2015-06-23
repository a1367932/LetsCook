<html>
  <head>
	<title>Startseite</title>
	<script src="src/foundation/js/vendor/fastclick.js"></script>
	<script src="src/foundation/js/vendor/jquery.js"></script>
  </head>
  <body>

	  {include file='header.tpl'}
	  
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
					  <td width="50%"><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Fr&uuml;hst&uuml;ck&von=0&bis=10">Fr&uuml;st&uuml;ck</a></td>
					  <td width="50px">{$frueh_cnt}</td>
					   <td><img src="/vorspeise.jpg" alt="Vorspeise"></td>
					  <td width="50%"><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Vorspeise&von=0&bis=10">Vorspeise</td>
					  <td width="50px">{$vor_cnt}</td>
					</tr>
					<tr>
					  <td><img src="/hauptspeise.jpg" alt="Hauptspeise"></td>
					  <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Hauptspeise&von=0&bis=10">Hauptspeise</a></td>
					  <td>{$haupt_cnt}</td>
					   <td><img src="/dessert.jpg" alt="Dessert"></td>
					   <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Dessert&von=0&bis=10">Dessert</a></td>
					  <td>{$dessert_cnt}</td>
					</tr>
					<tr>
					   <td><img src="/beilage.jpg" alt="Beilage"></td>
					  <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Beilage&von=0&bis=10">Beilage</a></td>
					  <td>{$beilage_cnt}</td>
					   <td><img src="/salat.jpg" alt="Salat"></td>
					   <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Salat&von=0&bis=10">Salat</a></td>
					  <td>{$salat_cnt}</td>
					</tr>
				  </tbody>
				</table>

			</div>
		  </div>
		</div>
	
  {include file='footer.tpl'}
	  
  </body>
</html>
