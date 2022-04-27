package com.ibm.FST_selenium_activity.FST_selenium_activity;

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

public class Activity_7 {
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
		WebElement User_info = driver.findElement(By.id("menu_directory_viewDirectory"));
		Assert.assertEquals(true, User_info.isDisplayed());
		String link = User_info.getAttribute("href");
		if(link != null) {
			
			System.out.println("Directory menu is clickable");
			User_info.click();
			Thread.sleep(10000);
			String header = driver.findElement(By.xpath("//div[@class='head']/h1")).getText();
			Assert.assertEquals("Search Directory", header);
			
		}
		else
			System.out.println("link not clickable");
		
		
		
		
	
	
		
	
		
	}
	
	@AfterMethod
	public void afterLaunch(){
		driver.close();
	}

}
