<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href="src/semantic/semantic.min.css"></link>
<title>Insert title here</title>
</head>
<body>


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
     	 <div class="ui selection dropdown">
        	<input name="geschlecht" type="hidden">
        
       		 <div class="default text">Gender</div>
        		<i class="dropdown icon"></i>
        	<div class="menu">
         		 <div class="item" data-value="male">Male</div>
         		 <div class="item" data-value="female">Female</div>
      		 </div>
      		</div>
    	</div>
		</div>
 	 </div>
	</div>
    <div class="field"></div>
 	 </div>

  <div class="two fields">
    <div class="field">
      <label>State</label>
      <select class="ui search dropdown">
        <option value="">State</option>
        <option value="AL">Alabama</option>
        <option value="AL">Alabama</option>
        <option value="AK">Alaska</option>
        <option value="AZ">Arizona</option>
        <option value="AR">Arkansas</option>
        <option value="CA">California</option>
        <option value="CO">Colorado</option>
        <option value="CT">Connecticut</option>
        <option value="DE">Delaware</option>
        <option value="DC">District Of Columbia</option>
        <option value="FL">Florida</option>
        <option value="GA">Georgia</option>
        <option value="HI">Hawaii</option>
        <option value="ID">Idaho</option>
        <option value="IL">Illinois</option>
        <option value="IN">Indiana</option>
        <option value="IA">Iowa</option>
        <option value="KS">Kansas</option>
        <option value="KY">Kentucky</option>
        <option value="LA">Louisiana</option>
        <option value="ME">Maine</option>
        <option value="MD">Maryland</option>
        <option value="MA">Massachusetts</option>
        <option value="MI">Michigan</option>
        <option value="MN">Minnesota</option>
        <option value="MS">Mississippi</option>
        <option value="MO">Missouri</option>
        <option value="MT">Montana</option>
        <option value="NE">Nebraska</option>
        <option value="NV">Nevada</option>
        <option value="NH">New Hampshire</option>
        <option value="NJ">New Jersey</option>
        <option value="NM">New Mexico</option>
        <option value="NY">New York</option>
        <option value="NC">North Carolina</option>
        <option value="ND">North Dakota</option>
        <option value="OH">Ohio</option>
        <option value="OK">Oklahoma</option>
        <option value="OR">Oregon</option>
        <option value="PA">Pennsylvania</option>
        <option value="RI">Rhode Island</option>
        <option value="SC">South Carolina</option>
        <option value="SD">South Dakota</option>
        <option value="TN">Tennessee</option>
        <option value="TX">Texas</option>
        <option value="UT">Utah</option>
        <option value="VT">Vermont</option>
        <option value="VA">Virginia</option>
        <option value="WA">Washington</option>
        <option value="WV">West Virginia</option>
        <option value="WI">Wisconsin</option>
        <option value="WY">Wyoming</option>
      </select>
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