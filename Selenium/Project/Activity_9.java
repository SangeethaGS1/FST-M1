package com.ibm.FST_selenium_activity.FST_selenium_activity;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import junit.framework.Assert;

public class Activity_9 {
	WebDriver driver;
	
	@BeforeMethod
	public void beforeLaunch() {
		driver= new FirefoxDriver();
		driver.get("http://alchemy.hguy.co/orangehrm");
		driver.manage().window().maximize();
		driver.manage().timeouts().pageLoadTimeout(30, TimeUnit.SECONDS);
		
	}
	
	
	@Test
	public void launch() throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(50, TimeUnit.SECONDS);
		driver.findElement(By.id("txtUsername")).sendKeys("orange");
		driver.findElement(By.id("txtPassword")).sendKeys("orangepassword123");
		driver.findElement(By.id("btnLogin")).click();
		driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
		Thread.sleep(50000);
		//Actions action = new Actions(driver);
		WebElement My_info = driver.findElement(By.id("menu_pim_viewMyDetails"));
		My_info.click();
		Thread.sleep(10000);
		driver.findElement(By.xpath("//*[@id='sidenav']//a[contains(text(),'Emergency Contacts')]")).click();
		Thread.sleep(1000);
		
		WebElement table = driver.findElement(By.xpath("//*[@id='emgcontact_list']/tbody"));
		
		List <WebElement> rows = table.findElements(By.tagName("tr"));
		
		for (int i=0;i<rows.size();i++) {
			List <WebElement> columns1 = rows.get(i).findElements(By.tagName("td"));
			for (int j=0;j<columns1.size();j++) {
				//System.out.println(j);
				System.out.println(columns1.get(j).getText());
				
			}
			
		}
		
		
		
		
		
	
	
		
	
		
	}
	
	@AfterMethod
	public void afterLaunch(){
		driver.close();
	}

}
