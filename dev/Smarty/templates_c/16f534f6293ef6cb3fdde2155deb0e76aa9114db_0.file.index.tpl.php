<?php /* Smarty version 3.1.25-dev/1, created on 2015-06-02 14:37:12
         compiled from "Smarty/templates/index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1791891686556da378465740_83264389%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16f534f6293ef6cb3fdde2155deb0e76aa9114db' => 
    array (
      0 => 'Smarty/templates/index.tpl',
      1 => 1433248581,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1791891686556da378465740_83264389',
  'variables' => 
  array (
    'name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.25-dev/1',
  'unifunc' => 'content_556da37853e8c1_11076716',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_556da37853e8c1_11076716')) {
function content_556da37853e8c1_11076716 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1791891686556da378465740_83264389';
?>
<html>
  <head>
	<link rel ="stylesheet" href="src/foundation/css/foundation.css"></link>
	<title>Smarty</title>
  </head>
  <body>
	
    	Hello, <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
!

<div class="row">
      <div class="large-12 columns">
        <h1>Welcome to Foundation</h1>
      </div>
    </div>
    
    <div class="row">
      <div class="large-12 columns">
      	<div class="panel">
	        <h3>We&rsquo;re stoked you want to try Foundation! </h3>
	        <p>To get going, this file (index.html) includes some basic styles you can modify, play around with, or totally destroy to get going.</p>
	        <p>Once you've exhausted the fun in this document, you should check out:</p>
	        <div class="row">
	        	<div class="large-4 medium-4 columns">
	    		<p><a href="http://foundation.zurb.com/docs">Foundation Documentation</a><br />Everything you need to know about using the framework.</p>
	    	</div>
	        	<div class="large-4 medium-4 columns">
	        		<p><a href="http://github.com/zurb/foundation">Foundation on Github</a><br />Latest code, issue reports, feature requests and more.</p>
	        	</div>
	        	<div class="large-4 medium-4 columns">
	        		<p><a href="http://twitter.com/foundationzurb">@foundationzurb</a><br />Ping us on Twitter if you have questions. If you build something with this we'd love to see it (and send you a totally boss sticker).</p>
	        	</div>        
					</div>
      	</div>
      </div>
    </div>

    <div class="row">
      <div class="large-8 medium-8 columns">
        <h5>Here&rsquo;s your basic grid:</h5>
        <!-- Grid Example -->

        <div class="row">
          <div class="large-12 columns">
            <div class="callout panel">
              <p><strong>This is a twelve column section in a row.</strong> Each of these includes a div.panel element so you can see where the columns are - it's not required at all for the grid.</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="large-6 medium-6 columns">
            <div class="callout panel">
              <p>Six columns</p>
            </div>
          </div>
          <div class="large-6 medium-6 columns">
            <div class="callout panel">
              <p>Six columns</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="large-4 medium-4 small-4 columns">
            <div class="callout panel">
              <p>Four columns</p>
            </div>
          </div>
          <div class="large-4 medium-4 small-4 columns">
            <div class="callout panel">
              <p>Four columns</p>
            </div>
          </div>
          <div class="large-4 medium-4 small-4 columns">
            <div class="callout panel">
              <p>Four columns</p>
            </div>
          </div>
        </div>
        
  </body>
</html>
<?php }
}
?>