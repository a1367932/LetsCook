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
			<td><img src="{$bild}" alt="Rezeptbild"></td>
		</tr>
		<tr>
			<td>{$durchschnittBewertungen}</td>
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
	</form>
</body>
</html>