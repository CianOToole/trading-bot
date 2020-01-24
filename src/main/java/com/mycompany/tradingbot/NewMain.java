/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author Cian
 */
public class NewMain {

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) throws IOException, SQLException {

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

    public static void linearRegression(ArrayList<StockTrade> s) throws SQLException {
        ArrayList<Timestamp> dateAndTime = new ArrayList<>();
        ArrayList<Long> epoch = new ArrayList<>();
        for (int i = 0; i < s.size(); i++) {
            dateAndTime.add(s.get(i).getMyDate());
        }
        for (int i = 0; i < s.size(); i++) {
            epoch.add(dateAndTime.get(i).toInstant().toEpochMilli());
        }

        double xSum = 0;
        double ySum = 0;

        for (int i = 0; i < s.size(); i++) {
            xSum += epoch.get(i).doubleValue();
            ySum += s.get(i).getPrice().doubleValue();
        }

        double xMean = xSum / s.size();
        double yMean = ySum / s.size();

        double num = 0;
        double den = 0;
        for (int i = 0; i < s.size(); i++) {
            double x = epoch.get(i).doubleValue();
            double y = s.get(i).getPrice().doubleValue();
            num += (x - xMean) * (y - yMean);
            den += (x - xMean) * (x - xMean);
        }

        double m = num / den;
        double b = yMean - m * xMean;
        double x = Instant.now().toEpochMilli();
        double y = m * x + b;
        System.out.println("this is y" + " " + y + " " + x + " " + m );

    }

}
