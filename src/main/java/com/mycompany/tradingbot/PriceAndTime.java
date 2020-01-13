/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import yahoofinance.Stock;
import yahoofinance.YahooFinance;

/**
 *
 * @author N00180562
 */
public class PriceAndTime implements Runnable {

    @Override
    public void run() {
        for (;;) {

            try {
                Thread.sleep(6000);
            } catch (InterruptedException e) {
                return;
            }
            Stock stock;
            try {
                stock = YahooFinance.get("BTC-USD");
                BigDecimal price = stock.getQuote(true).getPrice();
                System.out.println(price);
                
                Calendar closeTime = Calendar.getInstance();
                closeTime.setTimeZone(TimeZone.getTimeZone("America/New_York"));
        
                Calendar calNewYork = Calendar.getInstance();
                calNewYork.setTimeZone(TimeZone.getTimeZone("America/New_York"));
     
                calNewYork.get(Calendar.HOUR_OF_DAY);
                closeTime.set(Calendar.HOUR_OF_DAY, 16);
                
                if(calNewYork.get(Calendar.HOUR_OF_DAY) >= closeTime.get(Calendar.HOUR_OF_DAY)){
                    return;
                }
                
            } catch (IOException ex) {
                Logger.getLogger(PriceAndTime.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }
}
