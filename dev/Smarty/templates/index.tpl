<html>
  <head>
	<title>Startseite</title>
	<script src="src/foundation/js/vendor/fastclick.js"></script>
	<script src="src/foundation/js/vendor/jquery.js"></script>
  </head>

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
					  <td><img src="src/images/fruehstueck.jpg" alt="Fr&uuml;st&uuml;ck" width="100px" height="100px"></td>
					  <td width="50%"><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Fr&uuml;hst&uuml;ck&von=0&bis=10">Fr&uuml;st&uuml;ck</a></td>
					  <td width="50px"><b>{$frueh_cnt}</b></td>
					   <td><img src="src/images/vorspeise.jpg" alt="Vorspeise" width="100px" height="100px"></td>
					  <td width="50%"><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Vorspeise&von=0&bis=10">Vorspeise</td>
					  <td width="50px"><b>{$vor_cnt}</b></td>
					</tr>
					<tr>
					  <td><img src="src/images/hauptspeise.jpg" alt="Hauptspeise" width="100px" height="100px"></td>
					  <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Hauptspeise&von=0&bis=10">Hauptspeise</a></td>
					  <td><b>{$haupt_cnt}</b></td>
					   <td><img src="src/images/dessert.jpg" alt="Dessert" width="100px" height="100px"></td>
					   <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Dessert&von=0&bis=10">Dessert</a></td>
					  <td><b>{$dessert_cnt}</b></td>
					</tr>
					<tr>
					   <td><img src="src/images/beilage.jpg" alt="Beilage" width="100px" height="100px"></td>
					  <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Beilage&von=0&bis=10">Beilage</a></td>
					  <td><b>{$beilage_cnt}</b></td>
					   <td><img src="src/images/salat.jpeg" alt="Salat" width="100px" height="100px"></td>
					   <td><a href="classes/rezepteKategorieAnzeigen.class.php?kategorie=Salat&von=0&bis=10">Salat</a></td>
					  <td><b>{$salat_cnt}</b></td>
					</tr>
				  </tbody>
				</table>

			</div>
		  </div>
		</div>
	
  {include file='footer.tpl'}
	  
  </body>
</html>
