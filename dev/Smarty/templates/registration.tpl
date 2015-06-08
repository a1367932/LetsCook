<html>
<head>
  <script> 
    $(function(){
      $("#header").load("Smarty/templates/header.tpl"); 
    });
    </script>
<title>Registration</title>
</head>
<body>
 <div id="header"/></div>
<form class="ui form">
  <h4 class="ui dividing header">Personal Information</h4>
  <div class="two fields">
    <div class="field">
      <label>Name</label>
      <div class="two fields">
        <div class="field">
          <input name="vorname" placeholder="Vorname" type="text">
        </div>
        <div class="field">
          <input name="nachname" placeholder="Nachname" type="text">
        </div>
      </div>
    </div>

    <div class="two fields">
		<div class="field">
     	 <label>Geschlecht</label>
     	  <select class="ui search dropdown">
     	    <option value="geschlecht">weiblich</option>
      		<option value="geschlecht">m&auml;nnlich</option>
        	<option value="geschlecht">conchita</option>
      	</select>
    	</div>
		</div>
 	 </div>
	</div>
    <div class="field"></div>
 	 </div>

<div class="two fields">
	<div class="field">
    	<label>Geburtsdatum</label>
		<div class="ui input">
  			<input name="geburtsdatum" placeholder="z.B. 10.02.1990" type="text">
		</div>
	</div>

<div class="four fields">
	<div class="field">
    	<label>Strasse</label>
    <div class="two fields">
    		<div class="field">
				<div class="ui input">
  					<input name="strasse" placeholder="Strasse" type="text">
				</div>
			</div>
	
		<label>PLZ</label>
		<div class="field">
			<div class="ui input">
  				<input name="plz" placeholder="PLZ" type="text">
			</div>
		</div>
		
	
		<label>Ort</label>
		<div class="field">
			<div class="ui input">
  				<input name="ort" placeholder="Ort" type="text">
			</div>
		</div>
		
		<label>Land</label>
		<div class="field">
			<div class="ui input">
  				<input name="land" placeholder="Land" type="text">
			</div>
		</div>
	</div>
</div>
</div>

    <div class="field"></div>
  </div>
  <div class="field">
    <label>Biography</label>
    <textarea></textarea>
  </div>
  <h4 class="ui dividing header">Account Info</h4>
  <div class="two fields">
    <div class="required field">
      <label>Username</label>
      <div class="ui icon input">
        <input placeholder="Username" type="text">
        <i class="user icon"></i>
      </div>
    </div>
    <div class="required field">
      <label>Password</label>
      <div class="ui icon input">
        <input type="password">
        <i class="lock icon"></i>
      </div>
    </div>
  </div>
   <h4 class="ui top attached header">Import Settings</h4>
  <div class="ui bottom attached segment">
    <div class="grouped fields">
      <label for="alone">Would you like us to import your current settings?</label>
      <div class="field">
        <div class="ui radio checkbox checked">
          <input checked="" name="import" type="radio">
          <label>Yes</label>
        </div>
      </div>
      <div class="field">
        <div class="ui radio checkbox">
          <input name="import" type="radio">
          <label>No</label>
        </div>
      </div>
    </div>
  </div>
   <h4 class="ui dividing header">Settings</h4>
  <h5 class="ui header">Privacy</h5>
  <div class="field">
    <div class="ui toggle checkbox">
      <input name="privacy" type="radio">
      <label>Allow <b>anyone</b> to see my account</label>
    </div>
  </div>
  <div class="field">
    <div class="ui toggle checkbox">
      <input name="privacy" type="radio">
      <label>Allow <b>only friends</b> to see my account</label>
    </div>
  </div>
  <h5 class="ui header">Newsletter Subscriptions</h5>
  <div class="field">
    <div class="ui slider checkbox">
      <input name="top-posts" type="checkbox">
      <label>Top Posts This Week</label>
    </div>
  </div>
  <div class="field">
    <div class="ui slider checkbox">
      <input name="hot-deals" type="checkbox">
      <label>Hot Deals</label>
    </div>
  </div>
  <div class="ui hidden divider"></div>
  <div class="field">
    <div class="ui checkbox">
      <input name="hot-deals" type="checkbox">
      <label>I agree to the <a href="#">Terms of Service</a>.</label>
    </div>
  </div>
  <div class="ui error message">
    <div class="header">We noticed some issues</div>
  </div>
  <div class="ui submit button">Register</div>
</form>


</body>
</html>