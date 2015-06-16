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
	
			</div></div></div>
   {include file='footer.tpl'}
</body>
</html>