<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Profilbild &Aumlndern</title>
</head>
<body>
	<form action="imageaendern.class.php" method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Profilbild (.jpg)</td>
			<td><input type="file" name="bbild" accept="image/*"> </td>
		</tr>
		<tr>
			<td><td><input type="submit" name="imageaendernSubmit" value="Profilbild &auml;ndern"></td></td>
		</tr>
	</table>
	</form>
</body>
</html>