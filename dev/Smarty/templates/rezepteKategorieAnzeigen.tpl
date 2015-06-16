<html>
<head>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../src/foundation/js/vendor/jquery.js"></script>
	<title>Profilbild &Aumlndern</title>
</head>
<body>
  {include file='header_2.tpl'}
	 
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
 				
 				<tbody>
 				<!-- Tabelle der Rezepte wird erzgeugt -->
 				{section name=rezepte loop=$titel}
 					<a href="rezeptAnzeigen.class.php?bid={$bid[rezepte]}">
		 				
		 					
			 					<tr>
									<td><img src="../../Uploads/rezeptBilder/{$bild[rezepte]}" alt="Profilbild" height="150" width="150"></td>
									<td valign="top">{$titel[rezepte]} <br/> 
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
									<td valign="top"> {$bdatum[rezepte]}</td>
								</tr>		
					    
					</a>
				{/section}
				</tbody>
						</table>
			</div>
		</div>
	</div>{include file='footer.tpl'}
</body>
</html>