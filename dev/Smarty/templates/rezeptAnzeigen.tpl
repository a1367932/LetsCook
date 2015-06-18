<html>
<head>
  <script src="src/foundation/js/vendor/jquery.js"></script>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
 		<!-- Es wird ein Textfeld mit Button angezeigt wenn reply gecklickt wurde! -->
       
        <script type="text/javascript">
        	function reply(id) {
                document.getElementById("kommentierenForm"+id).style.visibility = 'visible';
                document.getElementById("kommentierenDiv1"+id).style.visibility = 'visible';
                document.getElementById("kommentierenText"+id).style.visibility = 'visible';
                document.getElementById("kommentierenDiv2"+id).style.visibility = 'visible';
                document.getElementById("kommentierenI"+id).style.visibility = 'visible';
			}
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
	
	<!-- Komentare anzeigen mit semantic ui
	Wollte es mit Semantic machen funkt aber nicht bei mir ! Es reichen auch Tabellen haubtsache die Einr�ckungen passen!!-->
	
<div class="ui threaded comments">
  <h3 class="ui dividing header">Kommentare</h3>
  <!-- schleife Hauptkommentare   -->
	{section name=kommentar loop=$kid}
  		 <div class="comment">
   			 <a class="avatar">
   			   <img width="50" height="50" src="../../Uploads/profilBilder/{$bbild[kommentar]}">
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
        			<a class="reply" onclick="reply({$kid[kommentar]});">Reply</a>
      			</div>
    		</div>
        
        <!-- Es wird ein Textfeld mit Button angezeigt wenn reply gecklickt wurde! -->
       
        <!-- ReplyForm standartm�ssig hidden -->
        <form class="ui reply  form" action="rezeptAnzeigen.class.php?neuesUk={$kid[kommentar]}&bid={$bid}" method="POST" style="visibility: hidden;" id="kommentierenForm{$kid[kommentar]}">
			<div class="field" style="visibility: hidden;" id="kommentierenDiv1{$kid[kommentar]}">
				<textarea style="visibility: hidden;" id="kommentierenText{$kid[kommentar]}" name="uktext"></textarea>
			</div>
			<div class="ui blue labeled submit icon button" style="visibility: hidden;" id="kommentierenDiv2{$kid[kommentar]}">
				<!--  <i class="icon edit"  style="visibility: hidden;" id="kommentierenI{$kid[kommentar]}"></i> Add Reply-->
				<input type="submit" name="neuesUnterk" id="kommentierenI{$kid[kommentar]}" value="Add Reply" style="visibility: hidden;">
			</div>
		</form>
	
        	<!-- Unterkomentar -->  
     {if isset($ukid[kommentar])}
		{section name=ukommentar loop=$ukid}
			{if $kid[kommentar] == $ukid[ukommentar]}
			 						
  				  <div class="comments">
     				 <div class="comment">
       					 <a class="avatar" >
         					 <img width="50" height="50" src="../../Uploads/profilBilder/{$ubbild[ukommentar]}">
        				</a>
        			<div class="content">
          				<a class="author">{$ubname[ukommentar]}</a>
          				<div class="metadata">
            				<span class="date">{$ukdatum[ukommentar]}</span>
          				</div>
          				<div class="text">
             				<font color="red">{$uktext[ukommentar]}</font>
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
	<form class="ui reply form" action="rezeptAnzeigen.class.php?bid={$bid}" method="POST">
		<div class="field">
			<textarea name="ktext"></textarea>
		</div>
		<div class="ui blue labeled submit icon button">
			<!-- <i class="icon edit"></i> Add Reply-->
			<input type="submit" name="neuesK" value="Add Reply">
		</div>
	</form>{include file='footer.tpl'}
</body>
</html>