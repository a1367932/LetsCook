<html>
<head>
	<script src="../src/foundation/js/vendor/fastclick.js"></script>
	<script src="../src/foundation/js/vendor/jquery.js"></script>
  
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
  {include file='header_2.tpl'}
   <div class="row">
   		<div class="large-12 columns">
		  <div class="panel">
			  <table width= "100%">
			  <tr>
				<td><h1>{$titel}</h1></td>
				<td>
			   <!-- Hier werden die Sterne angezeigt -->
				{if {$anzSterne}!=0}
					<!-- Berechnen wieviele Sterne nicht belegt sind und diese anzeigen. -->
					{for $foo=1 to {math equation="x-y" x=5 y={$anzSterne}} }
								<div class="stern" style="float: right;">
									<img alt="stern" height="45" width="45" src="../src/images/Stern2.png">
								</div>
							
					{/for}
					{for $foo=1 to {$anzSterne}}
								<div class="stern" style="float: right;">
									<img alt="stern" height="45" width="45" src="../src/images/Stern.png">
								</div>
							
					{/for}
				{else}
					<div class="stern">Keine Bewertungen</div>
				{/if}
				</td>
			  </tr>
			</table>
	
			  <table width="100%">
			  <tr>
				<th colspan="2" style="text-align: center">
				  <img src="../../Uploads/rezeptBilder/{$bild}" alt="Rezeptbild" height="150" width="250" align="middle" border="2" >
				</th>
			  </tr>
			  <tr>
				<td><b>Portionen:</b></td>
				<td>{$portion}</td>
			  {if {$session} neq 'false'}
			  <tr>
				<td>
				 <b>Jetzt Bewerten:</b>
				</td>
				<td>
				  {for $foo=1 to 5}
					  <div class="stern" style="float: left;">
						  <a href="rezeptAnzeigen.class.php?bid={$bid}&wert={$foo}"><img alt="stern" height="20" width="20" src="../src/images/Stern2.png" onmouseover="src='../src/images/Stern.png'" onmouseout="src='../src/images/Stern2.png'" ></a>
					  </div>								
				  {/for}
				</td>
			  </tr>
			  {/if}
				
			</tr>
		<tr>
			<td><b>Zutaten:</b></td>
			<td>{$zutaten}</td>
		</tr>
		
		<tr>
			<td><b>Zubereitung:</b></td>
			<td>{$btext}</td>
		</tr>
	</table>
	<!-- Komentare anzeigen mit semantic ui
	Wollte es mit Semantic machen funkt aber nicht bei mir ! Es reichen auch Tabellen haubtsache die Einr�ckungen passen!!-->
	
<h3><b>Kommentare</b></h3>
  <!-- schleife Hauptkommentare   -->
	{section name=kommentar loop=$kid}
	<div class="panel">
  		 <div class="comment">
		  <table style="width:100%">
			<tr>
			  <td width="20%">
				 <a class="avatar">
				  <img width="50" height="50" src="../../Uploads/profilBilder/{$bbild[kommentar]}">
				 </a>
			  </td>
			<div class="content">
			  <td rowspan="4">
				<div class="text">
       				 {$ktext[kommentar]}
      			</div>
			  </td>
			  <tr>
				<td>
				   <a class="author">{$bname[kommentar]}</a>
				</td>
			  </tr>
			  <tr>
				<td>
				  <div class="metadata">
      			  <span class="date">{$kdatum[kommentar]}</span>
     			</div>
				</td>
			  </tr>
			<tr>
			{if {$session} neq 'false'}
			  <td></td>
			  <td><div class="actions" align="right">
        			<a class="reply" onclick="reply({$kid[kommentar]});">Auf Beitrag antworten</a>
      			</div></td>
			{/if}
			</tr>
    		</div>
		  </table>
		  </div>
        <!-- Es wird ein Textfeld mit Button angezeigt wenn reply gecklickt wurde! -->
       {if {$session} neq 'false'}
        <!-- ReplyForm standartm�ssig hidden -->
        <form class="ui reply  form" action="rezeptAnzeigen.class.php?neuesUk={$kid[kommentar]}&bid={$bid}" method="POST" style="visibility: hidden;" id="kommentierenForm{$kid[kommentar]}">
			<div class="field" style="visibility: hidden;" id="kommentierenDiv1{$kid[kommentar]}">
				<textarea style="visibility: hidden;" id="kommentierenText{$kid[kommentar]}" name="uktext"></textarea>
			</div>
			<div class="ui blue labeled submit icon button" style="visibility: hidden;" id="kommentierenDiv2{$kid[kommentar]}">
				<!--  <i class="icon edit"  style="visibility: hidden;" id="kommentierenI{$kid[kommentar]}"></i> Add Reply-->
				<input type="submit" name="neuesUnterk" id="kommentierenI{$kid[kommentar]}" value="Antworten" style="visibility: hidden;">
			</div>
		</form>
		{/if}
	</div>
	
        	<!-- Unterkomentar -->  
     {if isset($ukid[kommentar])}
		{section name=ukommentar loop=$ukid}
			{if $kid[kommentar] == $ukid[ukommentar]}
			 	<div style="margin-left:50px">	
  				  <div class="comments">
     			 <table style="width:100%">
			<tr>
			  <td width="20%">
				 <a class="avatar">
				  <img width="50" height="50" src="../../Uploads/profilBilder/{$ubbild[ukommentar]}">
				 </a>
			  </td>
			<div class="content">
			  <td rowspan="4">
				<div class="text">
       				 {$uktext[ukommentar]}
      			</div>
			  </td>
			  <tr>
				<td>
				   <a class="author">{$ubname[ukommentar]}</a>
				</td>
			  </tr>
			  <tr>
				<td>
				  <div class="metadata">
      			  <span class="date">{$ukdatum[ukommentar]}</span>
     			</div>
				</td>
			  </tr>
    		</div>
		  </table>
    				</div>
   				</div>
  			{/if}	
		{/section}
   	{/if}
	
	{/section}
   {if {$session} neq 'false'}
	<form class="ui reply form" action="rezeptAnzeigen.class.php?bid={$bid}" method="POST">
		<div class="field">
			<textarea name="ktext"  style="height:200px"></textarea>
		</div>
		<div class="ui blue labeled submit icon button">
			<!-- <i class="icon edit"></i> Add Reply-->
			<input type="submit" name="neuesK" value="Senden">
		</div>
	</form>
	{/if}
	</div></div></div></div>
	{include file='footer.tpl'}
</body>
</html>