<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Meine Daten</title>
</head>
<body>
	<form action="meineRezepte.class.php" method="POST">
		<table>
		<!-- Anzeigen der Liste (Smarty array)
	<script type="text/javascript">
	var ausgabe="as";
		for (var i = 0; i <= {$bild}.length; i++){
			ausgabe=ausgabe+'<tr>
					<input type="hidden" name="bid" value="{$bid['+i+']}">
					<td><img src="{$bild['+i+']}" alt="RezeptBild"></td>
				</tr>
				<tr>
					<td>{$titel['+i+']}</td>
				</tr>
				<tr>
					<td><td><input type="submit" name="reazeptBearbeitenSubmit" value="Bearbeiten"></td></td>
				</tr>
				<tr>
					<td><a href="rezeptloeschen.class.php?bild={$bild['+i+']}">X</a></td></td>
				</tr>
			';
		}
		document.write(ausgabe);
	</script>
	 -->
		</table>
	</form>
</body>
</html>
