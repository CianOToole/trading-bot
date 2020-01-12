/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import java.io.IOException;
import static java.lang.ProcessBuilder.Redirect.from;
import static java.lang.ProcessBuilder.Redirect.to;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import static org.openqa.selenium.By.cssSelector;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import yahoofinance.Stock;
import yahoofinance.YahooFinance;
import yahoofinance.histquotes.HistoricalQuote;
import yahoofinance.histquotes.Interval;

/**
 *
 * @author Cian
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {

//        Calendar from = Calendar.getInstance();
//        Calendar to = Calendar.getInstance();
//        Stock google = YahooFinance.get("GOOG");
//        List<HistoricalQuote> googleHistQuotes = google.getHistory(from, to, Interval.WEEKLY);
//        System.out.println(googleHistQuotes);
        StopPriceAndTime i = new StopPriceAndTime();

        Calendar calNewYork = Calendar.getInstance();
        calNewYork.setTimeZone(TimeZone.getTimeZone("America/New_York"));
        System.out.println();
        System.out.println("Time in New York: " + calNewYork.get(Calendar.HOUR_OF_DAY) + ":"
                + calNewYork.get(Calendar.MINUTE) + ":" + calNewYork.get(Calendar.SECOND));
        System.out.println(calNewYork.getTime());

        Calendar openTime = Calendar.getInstance();
        Calendar closeTime = Calendar.getInstance();
        closeTime.setTimeZone(TimeZone.getTimeZone("America/New_York"));

        openTime.add(Calendar.HOUR_OF_DAY, 9);
        closeTime.set(Calendar.HOUR_OF_DAY, 16);
        closeTime.get(Calendar.HOUR_OF_DAY);

        System.out.println(closeTime);
        Thread t1 = new Thread(i);
        t1.start();

        try {
            System.setProperty("webdriver.chrome.driver", "E:\\trading-bot\\chromedriver.exe");
            ChromeDriver driver = new ChromeDriver();
            driver.manage().window().maximize();
            driver.get("https://www.etoro.com/login");
            Actions action = new Actions(driver);
            driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
//   WebElement element2 = driver.findElement(By.id("custom_temp_id_36"));
            WebElement element3 = driver.findElement(By.xpath("/html/body/ui-layout/div/div/div[1]/login/login-sts/div/div/div/form/div/div[7]/div/button[2]"));
//   WebElement element = driver.findElement(By.id("user_id"));
//   WebElement element4 = driver.findElement(By.id("entry-login"));
//   action.click(element2).perform();
            action.click(element3).perform();
//   action.sendKeys("N00180562").perform();
//   action.click(element3).perform();
//   action.sendKeys("qwertyuiop").perform();
//   action.click(element4).perform();
        } catch (Exception e) {
            e.getMessage();
        }
    }

}
