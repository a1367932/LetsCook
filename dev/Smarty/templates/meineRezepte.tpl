<html>
<head>
  	<title>Meine Daten</title>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../src/foundation/js/vendor/jquery.js"></script>
</head>
<body>
 {include file='header_2.tpl'}
   
			<div class="row">
	<div class="large-12 columns">
	  <div class="panel">
	<form action="meineRezepte.class.php" method="POST">
		
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
 		{$counter=1}
		{section name=rezepte loop=$titel}
				<tr onclick="window.location.href='rezeptAnzeigen.class.php?bid={$bid[rezepte]}'" onMouseOver="this.bgColor='#D4FFFD'" onMouseOut="this.bgColor='#FFFFFF'">
									<td><img src="../../Uploads/rezeptBilder/{$bild[rezepte]}?time()+{$counter++}" alt="RezeptBild" height="150" width="150"></td>
									<td valign="top">{$titel[rezepte]} <br/> 
														<!-- Hier werden die Sterne angezeigt -->
												{if {$anzSterne[rezepte]}!=0}
													{for $foo=1 to {$anzSterne[rezepte]}}
				                    							<div class="stern" style="float: left;">
		                    										<img alt="stern" height="20" width="20" src="../src/images/Stern.png">
	                    										</div>
	                										
													{/for}
													<!-- Berechnen wieviele Sterne nicht belegt sind und diese anzeigen. -->
													{for $foo=1 to {math equation="x-y" x=5 y={$anzSterne[rezepte]}} }
				                    							<div class="stern" style="float: left;">
		                    										<img alt="stern" height="20" width="20" src="../src/images/Stern2.png">
	                    										</div>
	                										
													{/for}
												{else}
													<div class="stern">keine Bewertung</div>
												{/if}
									</td>
									<td valign="top"> {$bdatum[rezepte]}</td>
									<td valign="middle"><a href="rezeptBearbeiten.class.php?bid={$bid[rezepte]}">Bearbeiten</a></td>
								</tr>		
					    
	    {/section}
				</tbody>
			 </table>
			</div>
	</form>
	  </div></div></div>{include file='footer.tpl'}
</body>
</html>
