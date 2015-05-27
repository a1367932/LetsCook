<?php /* Smarty version 3.1.24, created on 2015-05-26 12:35:23
         compiled from "../Smarty/templates/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:32254711755644c6b958a16_41566102%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd9ff51a93f7e3401cf40d03623088b1723f3a521' => 
    array (
      0 => '../Smarty/templates/index.tpl',
      1 => 1432634804,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '32254711755644c6b958a16_41566102',
  'variables' => 
  array (
    'name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.24',
  'unifunc' => 'content_55644c6b987cc7_33751058',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_55644c6b987cc7_33751058')) {
function content_55644c6b987cc7_33751058 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '32254711755644c6b958a16_41566102';
?>
<html>
  <head>
    <title>Smarty</title>
  </head>
  <body>
    Hello, <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
!
  </body>
</html>
<?php }
}
?>