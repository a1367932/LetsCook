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
	  </div></div></div>{include file='footer.tpl'}
</body>
</html>
