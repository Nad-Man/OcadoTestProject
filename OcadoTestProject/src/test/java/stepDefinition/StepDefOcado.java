package stepDefinition;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import browserController.WebConnector;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;


public class StepDefOcado extends WebConnector{
	
	//Accessing Properties files by keys and values
	private Properties properties;
	
	public StepDefOcado() {
		properties = new Properties();
		String filename = "config.properties";
		InputStream input = null;
		input = getClass().getClassLoader().getResourceAsStream(filename);
		if (input == null) {
			System.out.println("Sorry, unable to find " + filename);
			return;
		}

		try {
			properties.load(input);
		} catch (IOException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	// Opening Home page
	@Given("^I am on Ocado home page$")
	public void i_am_on_Ocado_home_page() throws Exception {
		driver.get(baseURL);
		// Thread.sleep(3000);
	}
	
	// Verifying Home page
	@Then("^I should see \"([^\"]*)\"$")
	public void i_should_see(String pageTitle) throws Exception {
		Assert.assertEquals(pageTitle, driver.getTitle());
		// Thread.sleep(3000);
	}

	// Verify Search functionality
	@When("^I enter \"([^\"]*)\" in \"([^\"]*)\" field$")
	public void i_enter_in_field(String productName, String searchField) throws Exception {
		driver.findElement(By.xpath(searchField)).sendKeys(productName);
	}

	// Clicking on button
	@When("^I click on \"([^\"]*)\" element$")
	public void i_click_on_element(String button) throws Exception {
		driver.findElement(By.xpath(button)).click();
		Thread.sleep(3000);
	}

	// Verify Header NavBar
	@When("^I click on \"([^\"]*)\" button in Header NavBar$")
	public void i_click_on_button_in_Header_NavBar(String HeaderNavBar) throws Exception {
		String value = HeaderNavBar;
		if(HeaderNavBar.startsWith("-")) {
			value = properties.getProperty(HeaderNavBar);
			if(null == value) {
				value = HeaderNavBar;
			}
		}
		driver.findElement(By.xpath(value)).click();
		// Thread.sleep(2000);
	}

	@Then("^I should see \"([^\"]*)\" page$")
	public void i_should_see_page(String arg1) throws Exception {
		Assert.assertEquals(arg1, driver.getTitle());
		Thread.sleep(2000);
	}

	// Verify third party page title
	@Then("^I should see \"([^\"]*)\" title$")
	public void i_should_see_title(String arg1) throws Exception {

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Assert.assertEquals(arg1, driver.getTitle());
		// Thread.sleep(3000);
	}

	// Verify Primary NavBar
	@When("^I click on \"([^\"]*)\" button in Primary Navbar$")
	public void i_click_on_button_in_Primary_Navbar(String PrimaryNavBar) throws Exception {
		String value = PrimaryNavBar;
		if(PrimaryNavBar.startsWith("-")) {
			value = properties.getProperty(PrimaryNavBar);
			if(null == value) {
				value = PrimaryNavBar;
			}
		}
		driver.findElement(By.cssSelector(value)).click();
	}
	
/*	// Verify browse shop dropdown
	@When("^I hover over on \"([^\"]*)\" button in Navbar$")
	public void i_hover_over_on_button_in_Navbar(String browseShop) throws Exception {
		//driver.findElement(By.cssSelector(browseShop));
		WebElement find  = driver.findElement(By.cssSelector(browseShop));
		Select select = new Select(find);
		
		select.selectByIndex(0);
		select.selectByIndex(1);
		
		select.selectByVisibleText("New");
	}*/

	@When("^I click on \"([^\"]*)\" button in side NavBar$")
	public void i_click_on_button_in_side_NavBar(String SideNavBar) throws Exception {
		String value = SideNavBar;
		if(SideNavBar.startsWith("-")) {
			value = properties.getProperty(SideNavBar);
			if(null == value) {
				value = SideNavBar;
			}
		}
		driver.findElement(By.xpath(value)).click();
	}

	// Verify footer links by xpaths
	@When("^I click on \"([^\"]*)\" footer links$")
	public void i_click_on_footer_links(String FooterLinks) throws Exception {
		String value = FooterLinks;
		if(FooterLinks.startsWith("-")) {
			value = properties.getProperty(FooterLinks);
			if(null == value) {
				value = FooterLinks;
			}
		}
		driver.findElement(By.xpath(value)).click();
		// Thread.sleep(2000);
	}

	// Verify footer links by css
	@When("^I click on \"([^\"]*)\" icons$")
	public void i_click_on_icons(String arg1) throws Exception {
		driver.findElement(By.cssSelector(arg1)).click();
	}

	// Verify footer links by url
	@Then("^I should nevigate to \"([^\"]*)\" website$")
	public void i_should_nevigate_to_website(String arg1) throws Exception {
		driver.navigate().to(arg1);
		Assert.assertEquals(arg1, driver.getCurrentUrl());
	}

	// Verify login popup
	@Then("^I should see \"([^\"]*)\" popup$")
	public void i_should_see_popup(String arg1) throws Exception {
		String searchWord = driver.findElement(By.xpath("//div[@id='loginRegPopup']/div[2]")).getText();
		Assert.assertTrue(searchWord.contains(arg1));
		Thread.sleep(3000);
	}

	// Verify login credential
	@Then("^I enter \"([^\"]*)\" and \"([^\"]*)\" for login$")
	public void i_enter_and_for_login(String email, String password) throws Exception {
		driver.findElement(By.xpath(email)).sendKeys("zoyzmagic@yahoo.com");
		driver.findElement(By.xpath(password)).sendKeys("magic9");
		Thread.sleep(3000);
	}

	// Clicking on login button to verify credential
	@Then("^I click on \"([^\"]*)\" login$")
	public void i_click_on_login(String login) throws Exception {
		driver.findElement(By.xpath(login)).click();
	}
	
	@Then("^I should see \"([^\"]*)\" Page$")
	public void i_should_see_Page(String arg1) throws Exception {
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Thread.sleep(3000);
		String searchWord = driver.findElement(By.xpath("//*[@id=\"content\"]/div[1]/div[1]/div[2]/div[1]/div[1]/h1"))
				.getText();
		Assert.assertTrue(searchWord.contains("Welcome back, Zoyz"));

		System.out.println(searchWord);
	}
	
	@Then("^I shuold select \"([^\"]*)\" buttons$")
	public void i_shuold_select_buttons(String dropDownListButton) throws Exception {
		
		Select RecipeCollections = new Select (driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[1]/div/select"))); 
		RecipeCollections.selectByIndex(1);
		
		Select MainIngredients = new Select(driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[2]/div/select")));
		MainIngredients.selectByIndex(1);
		
		Select Cuisine = new Select(driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[4]/div/select")));
		Cuisine.selectByIndex(1);
		
		Select MealType = new Select(driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[5]/div/select")));
		MealType.selectByIndex(1);
		
		Select Accompaniments = new Select(driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[6]/div/select")));
		Accompaniments.selectByIndex(1);
		
		Select Dietary = new Select(driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[8]/div/select")));
		Dietary.selectByIndex(1);
		
		Select TotalTime = new Select(driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[10]/div/select")));
		TotalTime.selectByIndex(1);
	
		Select Author = new Select(driver.findElement(By.xpath("//form[@name='recipeSearchForm']/ul/li[11]/div/select")));
		Author.selectByIndex(1);
		
		//click on show button
		driver.findElement(By.xpath("//div[@class='btn-wrapper']/button[2]")).click();
		
		//verify search result
		String searchWord = driver.findElement(By.xpath("//h3[@id='productCount']/span[1]")).getText();
		
		Assert.assertEquals("No results were found matching \"\".", searchWord);
		
		System.out.println(searchWord);
		
	}
}
