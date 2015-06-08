<?php /* Smarty version 3.1.25-dev/1, created on 2015-06-08 13:17:30
         compiled from "../Smarty/templates/registration.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:31952557579ca065f96_87677760%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fdd4d85b75ddd0d17528f96519c59a42f0b794bc' => 
    array (
      0 => '../Smarty/templates/registration.tpl',
      1 => 1433762247,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '31952557579ca065f96_87677760',
  'has_nocache_code' => false,
  'version' => '3.1.25-dev/1',
  'unifunc' => 'content_557579ca08bc85_28120769',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_557579ca08bc85_28120769')) {
function content_557579ca08bc85_28120769 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '31952557579ca065f96_87677760';
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
			<td><input type="text" id="vorname"></td>
		</tr>
		<tr>
			<td>Nachname</td>
			<td><input type="text" id="nachname"></td>
		</tr>
		<tr>
			<td>Geschlecht</td>
			<td> <input type="radio" id="geschlecht" value="weiblich">weiblich</td>
			<td> <input type="radio" id="geschlecht" value="maennlich">m&aumlnnlich</td>
		</tr>
		<tr>
			<td>Geburtsdatum</td>
			<td> <select id="tag" size="1"> 
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
			<td> <select id="monat" size="1"> 
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
			<td> <select id="jahr" size="1"> 
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
			<td><input type="text" id="strasse" placeholder="Strasse"></td>
			<td><input type="text" id="nummer" placeholder="Hausnummer"></td>
			<td><input type="text" id="plz" placeholder="PLZ"></td>
			<td><input type="text" id="ort" placeholder="Ort"></td>
			<td><input type="text" id="land" placeholder="Land"></td>
		</tr>
		<tr>
			<td>Nutzerdaten</td>
		</tr>
		<tr>
			<td>Benutzername</td>
			<td><input type="text" id="bname"></td>
		</tr>
		<tr>
			<td>Passwort</td>
			<td><input type="password" id="passwort"></td>
			<td><input type="password" id="passwort2"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" id="email"></td>
		</tr>
		<tr>
			<td>Profilbild (.jpg)</td>
			<td><input type="file" id="bbild" accept="image/*"> </td>
		</tr>
		<tr>
			<td><input type="submit" value="Absenden"></td>
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