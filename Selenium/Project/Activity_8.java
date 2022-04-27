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

public class Activity_8 {
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
		driver.findElement(By.xpath("//*[@class='quickLaunge']//span[contains(text(),'Apply Leave')]")).click();
		Thread.sleep(10000);
		WebElement leave = driver.findElement(By.id("applyleave_txtLeaveType"));
	Select select = new Select(leave);
	select.selectByVisibleText("DayOff");
	driver.findElement(By.id("applyleave_txtFromDate")).clear();
	driver.findElement(By.id("applyleave_txtFromDate")).sendKeys("2022-04-21");
	driver.findElement(By.id("applyleave_txtToDate")).clear();
	driver.findElement(By.id("applyleave_txtToDate")).sendKeys("2022-04-22");
	driver.findElement(By.id("applyBtn")).click();
	Thread.sleep(10000);
	driver.findElement(By.id("menu_leave_viewMyLeaveList")).click();
	Thread.sleep(1000);
	driver.findElement(By.id("calFromDate")).clear();
	driver.findElement(By.id("calFromDate")).sendKeys("2022-04-21");
	driver.findElement(By.id("calToDate")).clear();
	driver.findElement(By.id("calToDate")).sendKeys("2022-04-22");
	driver.findElement(By.id("btnSearch")).click();
	Thread.sleep(1000);
	WebElement status = driver.findElement(By.xpath("//*[@class='odd']/td[6]/a"));
	String status_request = status.getText();
	System.out.println("My leave status is " + status_request);
		
		
		
		
	
	
		
	
		
	}
	
	@AfterMethod
	public void afterLaunch(){
		driver.close();
	}

}
