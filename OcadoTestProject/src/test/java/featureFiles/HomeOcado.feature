#@Home
Feature: 
 	As an Ocado customer I should be able to navigate through home page so that I can start my shopping through website
 	
 	Background:
 		Given I am on Ocado home page
 		
 	Scenario: Veryfy hopme page title
 		#Given I am on Ocado home page
 		Then I should see "Ocado: The online supermarket"
 		
 	Scenario: Verify search fuctionality
 		#Given I am on Ocado home page
 		When  I enter "milk" in "//input[@id='findText']" field
 		And I click on "//input[@id='findButton']" element
 		Then I should see "milk from Ocado"
 	
 		
 	#@Home	
 	Scenario Outline: Datadriven testing for search functionality
 		When  I enter "<productName>" in "//input[@id='findText']" field
 		And I click on "//input[@id='findButton']" element
 		Then I should see "<searchResult>"
 		Examples:
	 		| productName | searchResult 	  |
	 		| Milk 		  | milk from Ocado   |
	 		| Bread		  | bread from Ocado  |
	 		| Butter 	  | butter from Ocado |
	 
	 #@Home	
	 Scenario Outline: Verify all buttons in Header Navbar
 		When I click on "<headerButtons>" button in Header NavBar
 		Then I should see "<searchResult>" page
 		Examples:
	 		| headerButtons		| searchResult 	                 										|
	 		| -Recipes			| Recipes from Ocado               										|
	 		| -Easter			| Easter from Ocado: Shop		 										|
	 		| -InviteAFriend	| Ocado: The online supermarket	 										|
	 		| -SmartPass		| Ocado: Ocado Smart Pass											    |
	 		| -Fetch			| Fetch, the pet store from Ocado \| Quality pet food and medicines		|	
	 		| -Sizzle			| Quality kitchen and dining products from kitchen store Sizzle.co.uk	|
	 		| -KidsClearance	| Kids Clearance: Clearance: Ocado: Shop								|
	 		| -Reserved 	 	| Login at Ocado, the online supermarket 								|
	 		| -BookADelivery   	| Ocado: The online supermarket											|
			| -ViewTrolly		| Ocado: Your trolley													|
			| -Checkout			| Ocado: The online supermarket											|
	
	 #@Home		
	 Scenario Outline: Verify all Buttons on Side NavBar
	 	When I click on "<sideBar>" button in side NavBar
	 	Then I should see "<searchResult>" page
	 	Examples:
			| sideBar			| searchResult 	        														|
			| -DonateFood 		| Food Bank Vouchers: Gifts & Vouchers: Newsagent & Entertainment: Ocado: Shop 	|
		    | -MakeTheChange 	| Ocado, the online supermarket													|
		    | -AmazingBabySale	| Amazing Baby Sale from Ocado: Shop											|
		    | -BigNightIn 		| Big Night In from Ocado: Shop													|
		    | -Easter			| Easter from Ocado: Shop														|
	
	Scenario Outline: Verify all buttons in Primary NavBar
		When I click on "<primaryButtons>" button in Primary Navbar
	 	Then I should see "<searchResult>" page
	 	Examples:
			| primaryButtons				  		| searchResult 	                 		|
	 		| div.browseShop				  		| Ocado, the Online Supermarket         |
	 		| li#favourites					 		| Ocado: The online supermarket 		|
	 		| ol.nav-common li:nth-child(3) 		| Ocado, the online supermarket	 		|
	 		| ol#navigation li:nth-child(4)	  		| Ocado: Offers							|
	 		| ol#navigation li:nth-child(5)	 		| New from Ocado: Shop					|	
	 		| ol#navigation li:nth-child(6)	  		| Ocado: Ocado Smart Pass				|
	 		| ol#navigation li:nth-child(7)			| Wine Cellar from Ocado: Shop Ocado	|
	 		| ol#navigation li:nth-child(8)			| Ocado: The online supermarket    		|
	 		| ol#navigation li:nth-child(9)		   	| Ocado: Customer Services				|
	 
	 #@include		
	 Scenario Outline: Verify all Social media links
		When I click on "<socialMedia>" icons
	 	Then I should nevigate to "<searchResultURL>" website
		Examples:
			#Social media icons
			| socialMedia	| searchResultURL															  |
			| a.facebook	| https://www.facebook.com/ocado											  |
			| a.twitter		| https://twitter.com/ocado													  |
			| a.gplus		| https://plus.google.com/+Ocado											  |
			| a.pinterest	| https://www.pinterest.co.uk/ocado/										  |
			| a.instagram	| https://www.instagram.com/ocadouk/										  |
			| a.youtube		| https://www.youtube.com/user/OCADO										  |
			| a.blog		| https://blog.ocado.com/													  |
			| a.ios			| https://itunes.apple.com/gb/app/ocado/id319691481?mt=8					  |
			| a.android		| https://play.google.com/store/apps/details?id=com.ocado.mobile.android&hl=en|
			| a.findOutMore	| https://blog.ocado.com/our-awards/										  |
					
	 #@Home		
	 Scenario Outline: Verify all Links in Footer
	 	When I click on "<FooterLinks>" footer links
	 	Then I should see "<searchResult>" page
	 	Examples:
			| FooterLinks				| searchResult 	                 										|
			| -ContactUs  				| Ocado: Customer Services	            								|
		    | -EmailUs					| Ocado: The online supermarket 	 									|
			| -CustomerServices  		| Ocado: Customer Services	 											|
		 	| -FAQ					  	| Ocado: devoted to your shopping										|
			| -Terms&Conditions			| Ocado: devoted to your shopping										|	
			| -PrivacyPolicy			| Ocado: devoted to your shopping										|
			| -SecurityPolicy			| Ocado: devoted to your shopping										|
			| -RecyclingInformation		| Recycling electricals and batteries \| Ocado blog						|
			| -AccessibilityStatement	| Ocado: devoted to your shopping										|
			| -Corporate				| Ocado Group															|
			| -AboutUs					| Ocado at a glance – Ocado Group										|
			| -InvestorCentre			| Share price centre – Ocado Group										|
			| -CorporateResponsibility	| Environment – Ocado Group												|
			| -MediaCentre				| 2015 – Ocado Group													|
			| -ContactUs2				| Contact us – Ocado Group												|
			| -AffiliateProgram			| Ocado, the online supermarket											|
			| -Careers					| Ocado Careers – Welcome to our careers website. Browse for Ocado jobs.|
			| -WorkingForUs				| Working for us – Ocado Careers 										|
			| -OcadoTechnology			| Ocado Technology – Ocado Careers				    					|
			| -DriverVacancies			| Delivery and LGV drivers – Ocado Careers								|
			| -WarehouseVacancies		| Warehouse Operatives – Ocado Careers									|
			| -HeadOffice				| Head Office – Ocado Careers											|
			| -Locations				| Our Locations – Ocado Careers											|
			| -ProductRequest			| Ocado: The online supermarket											|
			| -ClickToVerifyBox			| 	    																|
			| -Corporate				| Ocado Group															|
			| -Careers2					| Ocado Careers – Welcome to our careers website. Browse for Ocado jobs.|
			| -Sitemap					| Ocado: Sitemap														|
	 		| -TermsOfUse				| Ocado: devoted to your shopping										|
			| -ModernSlaveryActStatement| 										                                |
			| -NewCookiePolicy			| Ocado: devoted to your shopping										|
			| -Top						| Ocado: The online supermarket											|
	