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
  <!-- schleife Hauptkommentare   -->
	{section name=kommentar loop=$kid}
  		 <div class="comment">
   			 <a class="avatar">
   			   <img src="../../Uploads/profilBilder/{$bbild[kommentar]}">
   			 </a>
   			 <div class="content">
     			 <a class="author">{$bname[kommentar]}</a>
      			<div class="metadata">
      			  <span class="date">{$kdatum[kommentar]}</span>
     			</div>
     			 <div class="text">
       				 {$ktext[kommentar]}
      			</div>
      
      			<div class="actions">
        			<a class="reply">Reply</a>
      			</div>
    		</div>
        
        	<!-- Unterkomentar -->  
     {if isset($ukid[kommentar])}
		{section name=ukommentar loop=$ukid}
			{if $kid[kommentar] == $ukid[ukommentar]}
			 						
  				  <div class="comments">
     				 <div class="comment">
       					 <a class="avatar" >
         					 <img src="../../Uploads/profilBilder/{$ubbild[ukommentar]}">
        				</a>
        			<div class="content">
          				<a class="author">{$ubname[ukommentar]}</a>
          				<div class="metadata">
            				<span class="date">{$ukdatum[ukommentar]}</span>
          				</div>
          				<div class="text">
             				{$uktext[ukommentar]}
          				</div>
        				</div>
      				</div>
    				</div>
   				</div>
  			{/if}	
		{/section}
   	{/if}	
	{/section}
   </div>

</body>
</html>