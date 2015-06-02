<?php /* Smarty version 3.1.25-dev/1, created on 2015-06-02 11:50:07
         compiled from "Smarty/templates/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:9469556d7c4f389c77_44720217%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '88a6c1576fda24899eb653c930d2d102e0061e22' => 
    array (
      0 => 'Smarty/templates/index.tpl',
      1 => 1433238571,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9469556d7c4f389c77_44720217',
  'variables' => 
  array (
    'name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.25-dev/1',
  'unifunc' => 'content_556d7c4f3b5175_01969586',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_556d7c4f3b5175_01969586')) {
function content_556d7c4f3b5175_01969586 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '9469556d7c4f389c77_44720217';
?>
<html>
  <head>
	<link rel ="stylesheet" href="src/semantic/semantic.min.css"></link>
	<title>Smarty</title>
  </head>
  <body>
	
    	Hello, <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
!

	<div class="ui red three buttons">
		<button class="ui active button">one</button>
		<button class="ui active button">tow</button>
		<button class="ui active button">three</button>  
	</div>
	
	  <div class="ui facebook button">
		<i class="facebook icon"></i>
		Facebook
	  </div>
	  <div class="ui twitter button">
		<i class="twitter icon"></i>
		Twitter
	  </div>
	  <div class="ui google plus button">
		<i class="google plus icon"></i>
		Google Plus
	  </div>
	  
  </body>
</html>
<?php }
}
?>