#@Login
Feature:
	As an Ocado customer I should be able to Register and Login to website

	Background:
 		Given I am on Ocado home page
 	
 	#@Login
 	Scenario Outline: Verify Login and Registration Popup
 		When I click on "<loginOption>" element
 		Then I should see "<searchResult>" popup
		Examples:
			| loginOption			| searchResult			|
			| //*[@id='login']		| Log In				|
			| //*[@id='quickReg']	| Register in seconds	|
	
	#@Login		
	Scenario Outline: Verify Login and Registration fields error messages
 		When I click on "<loginOption>" element
 		Then I should see "<searchResult>" popup
 		Then I click on "<loginButton>" element
		Examples:
			| loginOption		 | searchResult			| loginButton 					 | searchResult 					 		|
			| //*[@id='login']	 | Log In				| //*[@id='js-popupLoginButton'] | Please enter a valid email address		|
			| //*[@id='login']	 | Log In				| //*[@id='js-popupLoginButton'] | Password is required				 		|	
			| //*[@id='login']	 | Log In				| //a[@class='helpLink']		 | Forgotten your password?			 		|
			| //*[@id='quickReg']| Register in seconds	| //button[@id='acceptForm']	 | Enter your first name.					|
			| //*[@id='quickReg']| Register in seconds	| //button[@id='acceptForm']	 | Enter your last name.			 		|
			| //*[@id='quickReg']| Register in seconds	| //button[@id='acceptForm']	 | Sorry, we need a valid email address.	|
			| //*[@id='quickReg']| Register in seconds	| //button[@id='acceptForm']	 | Please enter a password.			 	  	|
			| //*[@id='quickReg']| Register in seconds	| //button[@id='acceptForm']	 | Double check your postcode and try again.|
						
	#@Login		
	Scenario Outline: Verify Login in Popup third party windows
 		When I click on "<loginOption>" element
 		Then I should see "<searchResult>" popup
 		Then I enter "<email>" and "<password>" for login
 		And  I click on "<loginButton>" login
		Then I should see "Welcome" Page
		Examples:
			| loginOption		| searchResult	| email		 				| password 				 | loginButton 					 | 
			| //*[@id='login']	| Log In		| //input[@id='username']	| //input[@id='password']| //*[@id='js-popupLoginButton']| 
