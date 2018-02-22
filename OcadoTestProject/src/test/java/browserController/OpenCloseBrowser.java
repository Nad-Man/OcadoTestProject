package browserController;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import cucumber.api.java.After;
import cucumber.api.java.Before;

public class OpenCloseBrowser extends WebConnector {
	@Before
	public void openBrowser() throws Exception {
		
		if(browserType.equalsIgnoreCase("chrome")) {
			System.setProperty("webdriver.chrome.driver", "../OcadoTestProject/src/test/resources/chromedriver.exe");
			driver = new ChromeDriver();
		
		} else if(browserType.equalsIgnoreCase("firefox")) {
			System.setProperty("webdriver.gecko.driver", "../OcadoTestProject/src/test/resources/geckodriver.exe");
			driver = new FirefoxDriver();
		}
		
		driver.manage().window().maximize();
	}
	
	@After
	public void closeBrowser() {
		driver.quit();
	}
}
