package com.ibm.FST_selenium_activity.FST_selenium_activity;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import junit.framework.Assert;

public class Activity_4 {
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
		driver.findElement(By.id("txtUsername")).sendKeys("orange");
		driver.findElement(By.id("txtPassword")).sendKeys("orangepassword123");
		driver.findElement(By.id("btnLogin")).click();
		driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
		Thread.sleep(50000);
		//Actions action = new Actions(driver);
		WebElement pim = driver.findElement(By.cssSelector("a[href*='viewPimModule']"));
		String first_name = "b1_name";
		String second_name = "2nd_name";
		Actions action = new Actions(driver);
		action.click(pim).build().perform();;
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		driver.findElement(By.xpath("//*[@id='frmList_ohrmListComponent']//input[@id='btnAdd']")).click();
		
		driver.findElement(By.id("firstName")).sendKeys(first_name);
		driver.findElement(By.id("lastName")).sendKeys(second_name);
		driver.findElement(By.id("btnSave")).click();
		Thread.sleep(50000);
		WebElement pim1 = driver.findElement(By.cssSelector("a[href*='viewPimModule']"));
	pim1.click();
	Thread.sleep(10000);
	driver.findElement(By.id("empsearch_employee_name_empName")).sendKeys(first_name);
	driver.findElement(By.id("searchBtn")).click();
	Thread.sleep(5000);
	String actual_firstname= driver.findElement(By.xpath("//*[@id='resultTable']//td[3]/a")).getText();
	Assert.assertEquals(first_name, actual_firstname);
	
		
	}
	
	@AfterMethod
	public void afterLaunch(){
		driver.close();
	}

}
