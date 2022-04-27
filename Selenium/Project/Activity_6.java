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

public class Activity_6 {
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
			driver.findElement(By.xpath("//*[@id='sidenav']//a[contains(text(),'Qualifications')]")).click();
			Thread.sleep(1000);
			driver.findElement(By.id("addWorkExperience")).click();
			driver.findElement(By.id("experience_employer")).sendKeys("IBM");
			driver.findElement(By.id("experience_jobtitle")).sendKeys("Manager");
			driver.findElement(By.id("experience_from_date")).clear();
			driver.findElement(By.id("experience_from_date")).sendKeys("2010-03-01");
			driver.findElement(By.id("experience_to_date")).clear();
			driver.findElement(By.id("experience_to_date")).sendKeys("2015-06-01");
			driver.findElement(By.id("btnWorkExpSave")).click();
			Thread.sleep(5000);		

	
		
	}
	
	@AfterMethod
	public void afterLaunch(){
		driver.close();
	}

}
