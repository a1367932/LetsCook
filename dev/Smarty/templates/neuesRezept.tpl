<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Neues Rezept</title>
</head>
<body>
<div class="container">
	<div id="header"/></div>
	  
		<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
			
	<form action="neuesRezept.class.php" method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Rezeptname</td>
			<td><input type="text" name="titel" ></td>
		</tr>
		<tr>
			<td>Rezeptbild (.jpg, max. 5MB)</td>
			<td><input type="file" name="bild" accept="image/*"> </td>
		</tr>
		<tr>
			<td>Zutaten</td>
			<td><textarea rows="4" cols="50" name="zutaten">Trennen Sie die einzelnen Zutaten mit einem Beistrich! (90g Butter, 1l Wasser) </textarea> </td>
		</tr>
		<tr>
			<td>Portitonen</td>
			<td><select name="portion" size="1"> 
					<script type="text/javascript">
					  	var portionen="";
						for (var i = 1; i <= 10; i++) 
								portionen=portionen+'<option>'+i+'</option>';
						document.write(portionen);
					</script>
				</select> Personen</td>
		</tr>
		<tr>
			<td>Zubereitungsanweisungen</td>
			<td><textarea rows="4" cols="50" name="btext">Erl&auml;utern Sie die Zubereitungsschritte!</textarea> </td>
		</tr>
		<tr>
			<td>Kategorie w&auml;hlen</td>
			<td><select name="kname" size="1"> 
					<option>Fr&uuml;hst&uuml;ck</option>
					<option>Vorspeise</option>
					<option>Hauptspeise</option>
					<option>Dessert</option>
					<option>Beilage</option>
					<option>Salat</option>
				</select> Personen</td>
		</tr>
		<tr>
			<td><input type="submit" value="Speichern" name="neuesRezeptSubmit"></td>
		</tr>
	</table>
	</form>
	</div>
	</div>
	</div>
	</div>
</body>
</html>