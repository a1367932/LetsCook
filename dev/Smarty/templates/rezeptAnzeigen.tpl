<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
	<title>Rezept</title>
</head>
<body>
	<h1>{$titel}</h1>
	<table>
		<tr>
			<td><img src="../../Uploads/rezeptBilder/{$bild}" alt="Rezeptbild" height="150" width="250"></td>
		</tr>
		<tr>
			<td>{$durchschnittBewertungen} in Prozent</td>
		</tr>
		<tr>
			<td>{$portion} Portionen</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>Zutaten:</td>
			<td>{$zutaten}</td>
		</tr>
		
		<tr>
			<td>Zubereitung:</td>
			<td>{$btext}</td>
		</tr>
	</table>
	
	<!-- Komentare anzeigen mit semantic ui-->
	
<div class="ui threaded comments">
  <h3 class="ui dividing header">Kommentare</h3>
  <!-- forschleifen -->
 {foreach from=$kommentare key=kommentar item=items}
  {foreach from=$items item=item}
  	{if $item@first}
  		 <div class="comment">
   			 <a class="avatar">
   			   <img src="/images/avatar/small/matt.jpg">
   			 </a>
   			 <div class="content">
     			 <a class="author">Matt</a>
      			<div class="metadata">
      			  <span class="date">Today at 5:42PM</span>
     			</div>
     			 <div class="text">
       				 {$item}
      			</div>
      
      			<div class="actions">
        			<a class="reply">Reply</a>
      			</div>
    		</div>
  
            <strong>hauptkommentar!!!: </strong><br />
        {else}
        	<!-- Unterkomentar -->  
    <div class="comments">
      <div class="comment">
        <a class="avatar">
          <img src="/images/avatar/small/jenny.jpg">
        </a>
        <div class="content">
          <a class="author">Jenny Hess</a>
          <div class="metadata">
            <span class="date">Just now</span>
          </div>
          <div class="text">
             {$item}
          </div>
        </div>
      </div>
    </div>
   </div>
   
   </div>
           
   {/if}
  {/foreach}
{/foreach}
  
 
  
   

  
</body>
</html>