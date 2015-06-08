<html>
  <head>
	<script src="src/foundation/js/vendor/jquery.js"></script>
    <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Startseite</title>
  </head>
  <body>
	<div class="container">
	 seife {$login}
	  {if {$login} eq "true"}
			<div id="header"/></div>
		{else}
			<div id="header"/></div>
		{/if}
	  
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
					  <td width="50%"><a href="">Fr&uuml;st&uuml;ck</a></td>
					  <td width="50px">0</td>
					   <td><img src="/vorspeise.jpg" alt="Vorspeise"></td>
					  <td width="50%"><a href="">Vorspeise</td>
					  <td width="50px">0</td>
					</tr>
					<tr>
					  <td><img src="/hauptspeise.jpg" alt="Hauptspeise"></td>
					  <td><a href="">Hauptspeise</a></td>
					  <td>0</td>
					   <td><img src="/dessert.jpg" alt="Dessert"></td>
					   <td><a href="">Dessert</a></td>
					  <td>0</td>
					</tr>
					<tr>
					   <td><img src="/beilage.jpg" alt="Beilage"></td>
					  <td><a href="">Beilage</a></td>
					  <td>0</td>
					   <td><img src="/salat.jpg" alt="Salat"></td>
					   <td><a href="">Salat</a></td>
					  <td>0</td>
					</tr>
				  </tbody>
				</table>

			</div>
		  </div>
		</div>
	</div> 
  </body>
</html>
