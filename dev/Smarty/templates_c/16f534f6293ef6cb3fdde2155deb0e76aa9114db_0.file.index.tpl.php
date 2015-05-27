<?php /* Smarty version 3.1.25-dev/1, created on 2015-05-27 11:49:05
         compiled from "Smarty/templates/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:2483490445565931197f327_49326644%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16f534f6293ef6cb3fdde2155deb0e76aa9114db' => 
    array (
      0 => 'Smarty/templates/index.tpl',
      1 => 1432720131,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2483490445565931197f327_49326644',
  'variables' => 
  array (
    'name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.25-dev/1',
  'unifunc' => 'content_556593119b9b49_10916973',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_556593119b9b49_10916973')) {
function content_556593119b9b49_10916973 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '2483490445565931197f327_49326644';
?>
<html>
  <head>
      <link rel ="stylesheet" href="src/semantic/semantic.css"></link>


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