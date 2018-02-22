#@Recipes
Feature: 
 	As an Ocado customer I should be able to navigate through recipes page so that I can start my shopping through website
 		
 	Background:
 		Given I am on Ocado home page
 			 
	Scenario: Verify recipes finder dropdown in Recipes page
 		When I click on "//img[@alt='Recipes']" element
 		Then I should see "Recipes from Ocado"
 		Then I shuold select "recipes" buttons
 	
 	Scenario: Veryfy recipes page title
 		When I click on "//img[@alt='Recipes']" element
 		Then I should see "Recipes from Ocado"
 	
 		
 	Scenario Outline: Verify all buttons in Recipes page
 		When I click on "//img[@alt='Recipes']" element
 		Then I should see "Recipes from Ocado"
 		And I click on "<recipesButtons>" element
 		Then I should see "<searchResult>" page
 		Examples:
	 		| recipesButtons				  											| searchResult 	                 					|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[1]/a/div/div/h2 		 	| Easy puddings : Recipes from Ocado            	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[2]/a/div/div/h2				| Energy boosters : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[3]/a/div/div/h2 		 	| Family-friendly recipes : Recipes from Ocado   	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[4]/a/div/div/h2				| Healthy Eating : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[5]/a/div/div/h2 		 	| Pancake recipes : Recipes from Ocado          	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[6]/a/div/div/h2				| Two of your 5 a day : Recipes from Ocado 			|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[7]/a/div/div/h2 		 	| Valentine's day recipes : Recipes from Ocado  	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[8]/a/div/div/h2				| Winter Warmers : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[9]/a/div/div/h2 		 	| 30 minutes or less : Recipes from Ocado       	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[10]/a/div/div/h2			| 40 favourites : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[11]/a/div/div/h2 		 	| Adult lunchbox recipes : Recipes from Ocado   	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[12]/a/div/div/h2			| Back to school : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[13]/a/div/div/h2 		 	| BBQ recipes : Recipes from Ocado              	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[14]/a/div/div/h2			| Beef recipes : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[15]/a/div/div/h2 		 	| Biscuit recipes : Recipes from Ocado          	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[16]/a/div/div/h2			| Bread recipes : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[17]/a/div/div/h2 		 	| Brilliant bakes : Recipes from Ocado      		|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[18]/a/div/div/h2			| Brunch recipes : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[19]/a/div/div/h2 		 	| Carrot cakes : Recipes from Ocado            		|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[20]/a/div/div/h2			| Celebrity Cruises : Recipes from Ocado 			|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[21]/a/div/div/h2 		 	| Chicken recipes : Recipes from Ocado          	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[22]/a/div/div/h2			| Chocolate Cakes : Recipes from Ocado				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[23]/a/div/div/h2 		 	| Christmas recipes : Recipes from Ocado           	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[24]/a/div/div/h2			| Classic recipes : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[25]/a/div/div/h2 		 	| Cocktail recipes : Recipes from Ocado           	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[26]/a/div/div/h2			| Fish & seafood recipes : Recipes from Ocado 		|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[27]/a/div/div/h2 		 	| Five ingredients or less : Recipes from Ocado 	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[28]/a/div/div/h2			| Freezer finds : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[29]/a/div/div/h2 		 	| Garden glut recipes : Recipes from Ocado      	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[30]/a/div/div/h2			| Great British : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[31]/a/div/div/h2 		 	| Kids : Recipes from Ocado               			|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[32]/a/div/div/h2			| Kids lunchbox recipes : Recipes from Ocado 		|	
 			| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[33]/a/div/div/h2			| Lamb recipes : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[34]/a/div/div/h2 		 	| Low-carb recipes : Recipes from Ocado         	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[35]/a/div/div/h2			| One pot recipes : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[36]/a/div/div/h2 		 	| Pie recipes : Recipes from Ocado              	|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[37]/a/div/div/h2			| Pork recipes : Recipes from Ocado 				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[38]/a/div/div/h2 		 	| Restaurant classics at Home : Recipes from Ocado  |
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[39]/a/div/div/h2			| Roast recipes : Recipes from Ocado				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[40]/a/div/div/h2 		 	| Salad recipes : Recipes from Ocado        		|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[41]/a/div/div/h2			| Salmon recipes : Recipes from Ocado				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[42]/a/div/div/h2 		 	| Simple skills : Recipes from Ocado				|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[43]/a/div/div/h2			| Tea Party recipes : Recipes from Ocado 			|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[44]/a/div/div/h2 		 	| Vegetarian recipes : Recipes from Ocado			|
	 		| //*[@id='content']/div[1]/div[2]/div[3]/ul/li[45]/a/div/div/h2			| Warming puds : Recipes from Ocado					|	
	 

 		
 		
 		 			 		
