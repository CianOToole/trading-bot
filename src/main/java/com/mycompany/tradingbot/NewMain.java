/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import java.io.IOException;
import java.util.Calendar;
import java.util.TimeZone;

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

       


    }

}
