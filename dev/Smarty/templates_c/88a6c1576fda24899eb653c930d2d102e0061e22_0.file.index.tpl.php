<?php /* Smarty version 3.1.25-dev/1, created on 2015-06-08 18:49:07
         compiled from "Smarty/templates/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:216375575c7837a2684_51178305%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '88a6c1576fda24899eb653c930d2d102e0061e22' => 
    array (
      0 => 'Smarty/templates/index.tpl',
      1 => 1433782143,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '216375575c7837a2684_51178305',
  'has_nocache_code' => false,
  'version' => '3.1.25-dev/1',
  'unifunc' => 'content_5575c7837c75b5_67604654',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5575c7837c75b5_67604654')) {
function content_5575c7837c75b5_67604654 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '216375575c7837a2684_51178305';
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
					  <td><img src="/fruestueck.jpg" alt="Fr&uuml;st&uuml;ck"></td>
					  <td width="50%"><a href="">Fr&uuml;st&uuml;ck</a></td>
					  <td width="50px">0</td>
					   <td><img src="/vorspeise.jpg" alt="Vorspeise"></td>
					  <td width="50%"><a href="">Vorspeise</td>
					  <td width="50px">0</td>
					</tr>
					<tr>
					  <td><img src="/hauptspeise.jpg" alt="Hauptspeise"></td>
					  <td><a href="">Hauptspeise</a></td>
					  <td>0</td>
					   <td><img src="/dessert.jpg" alt="Dessert"></td>
					   <td><a href="">Dessert</a></td>
					  <td>0</td>
					</tr>
					<tr>
					   <td><img src="/beilage.jpg" alt="Beilage"></td>
					  <td><a href="">Beilage</a></td>
					  <td>0</td>
					   <td><img src="/salat.jpg" alt="Salat"></td>
					   <td><a href="">Salat</a></td>
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