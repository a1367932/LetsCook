<html>
<head>
	<script src="src/foundation/js/foundation/foundation.js"></script>
	<script src="src/foundation/js/foundation/foundation.topbar.js"></script>
	<link rel ="stylesheet" href="src/foundation/css/foundation.min.css"></link>
	<title>Rezepte Anzeigen</title>
</head>
<body style="background-image: url('src/images/bg.png'); background-repeat: repeat; ">

	
  <div class="row">
	<div class="large-12 columns">
	  <div class="panel">
		<div class="small-5 columns">
		  <img src="src/images/logo.png" width="100px" height="100px" style="float:left"/>
		  <h3>Le Kochforum</h3>
		</div>
		{if {$session} eq 'false'}
		<form  action="classes/index.class.php" method="POST">
		  <div class="large-3 columns">
			<input type="text" name="username" placeholder="Username" />
		  </div>
		  <div class="large-3 columns">
			<input type="password" name="password" placeholder="Password" />
		  </div>
			<div class="large-1 columns">
			  <input type="image" src="src/images/foundation-icons/svgs/fi-fast-forward.svg" alt="Submit" name="loginSubmit" width="35em" height="35em"/>
			</div>
		</form>
		{/if}
		<div class="row">
		  <div class="small-3 right columns">
		   {if {$session} == 'false'}
			<i><h4><small>Registriere dich <a href="classes/registration.class.php">hier</a>!</small></h3></i><br/>
		   {/if}
			{if {$session} neq 'false'}
			  <i><h4><small><a href="classes/logout.class.php">Logout</a>!</small></h3></i>
			{/if}
		  </div>
		</div>
	  </div>
	</div>
  </div>
   <div class="row">
	<div class="large-12 columns">
	  
  <nav class="top-bar" data-topbar role="navigation">
	<section class="top-bar-section">
	  <ul class="left">
		<li><a href="index.php">Startseite</a></li>
		 {if {$session} neq 'false'}
		<li><a href="classes/neuesRezept.class.php">Neues Rezept</a></li>
	  </ul>
	 
	  <ul class="right">
      <li class="has-dropdown">
        <a href="#">Kontrollzentrum</a>
        <ul class="dropdown">
          <li><a href="classes/meineDaten.class.php">Meine Daten</a></li>
		  <li><a href="classes/meineRezepte.class.php">Meine Rezepte</a></li>
		   <li><a href="classes/logout.class.php">Logout</a></li>
        </ul>
      </li>
    </ul>
	  {/if}
	</section>
  </nav>
	  </div></div></body></html>