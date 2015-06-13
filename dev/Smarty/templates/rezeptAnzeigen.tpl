<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Rezept</title>
</head>
<body>
	<h1>{$titel}</h1>
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
</body>
</html>