<?php /* Smarty version 3.1.25-dev/1, created on 2015-06-08 14:47:44
         compiled from "../Smarty/templates/registration.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1351355758ef0d02d42_59754977%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fdd4d85b75ddd0d17528f96519c59a42f0b794bc' => 
    array (
      0 => '../Smarty/templates/registration.tpl',
      1 => 1433766762,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1351355758ef0d02d42_59754977',
  'has_nocache_code' => false,
  'version' => '3.1.25-dev/1',
  'unifunc' => 'content_55758ef0d27d20_15241527',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_55758ef0d27d20_15241527')) {
function content_55758ef0d27d20_15241527 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1351355758ef0d02d42_59754977';
?>
<html>
<head>
  <?php echo '<script'; ?>
 src="src/foundation/js/vendor/jquery.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    <?php echo '</script'; ?>
>
	<title>Registration</title>
</head>
<body>
<div class="container">
	<div id="header"/></div>
	  
		<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
			
	<form action="registration.class.php" method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Vorname</td>
			<td><input type="text" name="vorname" ></td>
		</tr>
		<tr>
			<td>Nachname</td>
			<td><input type="text" name="nachname"></td>
		</tr>
		<tr>
			<td>Geschlecht</td>
			<td> <input type="radio" name="geschlecht" value="weiblich">weiblich</td>
			<td> <input type="radio" name="geschlecht" value="maennlich">m&aumlnnlich</td>
		</tr>
		<tr>
			<td>Geburtsdatum</td>
			<td> <select name="tag" size="1"> 
					<option>Tag</option>
					<?php echo '<script'; ?>
 type="text/javascript">
					  	var tage="";
						for (var i = 1; i <= 31; i++) 
								tage=tage+'<option>'+i+'</option>';
						document.write(tage);
					<?php echo '</script'; ?>
>
				</select>
			</td>
			<td> <select name="monat" size="1"> 
					<option>Monat</option>
					<?php echo '<script'; ?>
 type="text/javascript">
					  	var monate="";
						for (var i = 1; i <= 12; i++) 
								monate=monate+'<option>'+i+'</option>';
						document.write(monate);
					<?php echo '</script'; ?>
>
				</select>
			</td>
			<td> <select name="jahr" size="1"> 
					<option>Jahr</option>
					<?php echo '<script'; ?>
 type="text/javascript">
					  	var jahr="";
						for (var i = 1900; i <= 2015; i++) 
								jahr=jahr+'<option>'+i+'</option>';
						document.write(jahr);
					<?php echo '</script'; ?>
>
				</select>
			</td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td><input type="text" name="strasse" placeholder="Strasse"></td>
			<td><input type="text" name="hausnummer" placeholder="Hausnummer"></td>
			<td><input type="text" name="plz" placeholder="PLZ"></td>
			<td><input type="text" name="ort" placeholder="Ort"></td>
			<td><input type="text" name="land" placeholder="Land"></td>
		</tr>
		<tr>
			<td>Nutzerdaten</td>
		</tr>
		<tr>
			<td>Benutzername</td>
			<td><input type="text" name="bname"></td>
		</tr>
		<tr>
			<td>Passwort</td>
			<td><input type="password" name="passwort"></td>
			<td><input type="password" name="passwort2"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="email"></td>
		</tr>
		<tr>
			<td>Profilbild (.jpg)</td>
			<td><input type="file" name="bbild" accept="image/*"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="Absenden" name="registrationSubmit"></td>
		</tr>
	</table>
	</form>
	</div>
	</div>
	</div>
	</div>
</body>
</html><?php }
}
?>