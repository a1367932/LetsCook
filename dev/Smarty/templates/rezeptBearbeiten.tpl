<html>
<head>
	<title>Rezept bearbeiten</title>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../src/foundation/js/vendor/jquery.js"></script>
</head>
<body>
  
  {include file='header_2.tpl'}
	  
		<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
			
	<form action="rezeptBearbeiten.class.php?bid={$bid}" method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Rezeptname</td>
			<td><input type="text" name="titel" value="{$titel}"></td>
		</tr>
		<tr>
			<td>Rezeptbild (.jpg, max. 5MB)</td>
			<td><input type="file" name="bild" accept="image/*" value="{$bild}"> </td>
		</tr>
		<tr>
			<td>Zutaten</td>
			<td><textarea rows="4" cols="50" name="zutaten">{$zutaten}</textarea> </td>
		</tr>
		<tr>
			<td>Portitonen</td>
			<td><select name="portion" size="1" value="{$portion}"> 
					<script type="text/javascript">
					  	var portionen="";
						for (var i = 1; i <= 10; i++) 
							if({$portion}==i.toString())
								portionen=portionen+'<option selected>'+i+'</option>';
							else
								portionen=portionen+'<option>'+i+'</option>';
						document.write(portionen);
					</script>
				</select> Personen</td>
		</tr>
		<tr>
			<td>Zubereitungsanweisungen</td>
			<td><textarea rows="4" cols="50" name="btext">{$btext}</textarea> </td>
		</tr>
		<tr>
			<td>Kategorie w&auml;hlen</td>
			<td>{$kname}</td>
		</tr>
		<tr>
			<td><input type="submit" value="Speichern" name="rezeptBearbeitenSubmit"></td>
		</tr>
	</table>
	</form>
	</div>
	</div>
	</div>{include file='footer.tpl'}
</body>
</html>