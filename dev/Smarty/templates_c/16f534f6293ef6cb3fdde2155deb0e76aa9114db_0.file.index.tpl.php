<?php /* Smarty version 3.1.25-dev/1, created on 2015-06-07 21:12:38
         compiled from "Smarty/templates/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:537857603557497a6b2cd86_69703669%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16f534f6293ef6cb3fdde2155deb0e76aa9114db' => 
    array (
      0 => 'Smarty/templates/index.tpl',
      1 => 1433704293,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '537857603557497a6b2cd86_69703669',
  'has_nocache_code' => false,
  'version' => '3.1.25-dev/1',
  'unifunc' => 'content_557497a6b57558_44362319',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_557497a6b57558_44362319')) {
function content_557497a6b57558_44362319 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '537857603557497a6b2cd86_69703669';
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
	<title>Startseite</title>
  </head>
  <body>
	<div class="container">
	  
	  <div id="header"/></div>
	  
		<div class="row">
		  <div class="large-12 columns">
			<div class="panel">
			  <b>Kochforen</b>
				<p>Sie haben Fragen rund um Kochrezepte, Zutaten oder Zubereitung sowie Ernährung? Vom kompletten Menü bis
				zum Dessert finden Sie hier passende Rezepte z.B. für Party, Kinder oder Diäten von Weight Watchers bis SIS.</p>
				
				<table>
				  <tbody>
					<tr>
					  <td width="50%"><a href="">Aufläufe</a></td>
					  <td width="50px">0</td>
					  <td width="50%"><a href="">Brot & Brötchen</td>
					  <td width="50px">0</td>
					</tr>
					<tr>
					  <td><a href="">Desserts & Süßspeisen</a></td>
					  <td>0</td>
					   <td><a href="">Desserts & Süßspeisen</a></td>
					  <td>0</td>
					</tr>
					<tr>
					  <td><a href="">Suppen & Eintöpfe</a></td>
					  <td>0</td>
					   <td><a href="">Desserts & Süßspeisen</a></td>
					  <td>0</td>
					</tr>
					<tr>
					  <td><a href="">Fisch & Meeresfrüchte</a></td>
					  <td>0</td>
					   <td><a href="">Grillen</a></td>
					  <td>0</td>
					</tr>
					<tr>
					  <td><a href="">Fleisch</a></td>
					  <td>0</td>
					   <td><a href="">Milchprodukte</td>
					  <td>0</td>
					</tr>
					<tr>
					  <td><a href="">Gemüse und Salat</a></td>
					  <td>0</td>
					   <td><a href="">Partyrezepte</a></td>
					  <td>0</td>
					</tr>
					  <tr>
					  <td><a href="">Vegetarisch</a></td>
					  <td>0</td>
					   <td><a href="">Torten & Kuchen</a></td>
					  <td>0</td>
					</tr>
				  </tbody>
				</table>

			</div>
		  </div>
		</div>
	</div> 
  </body>
</html>
<?php }
}
?>