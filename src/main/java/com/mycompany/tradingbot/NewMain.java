/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import com.google.gson.Gson;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import static spark.Spark.*;
import yahoofinance.Stock;
import yahoofinance.YahooFinance;
import yahoofinance.histquotes.Interval;

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

		init();
		get("/hello", (req, res) -> "Hello World");
		get("/", (req, res) -> {
			res.type("application/json");
			Stock stock = YahooFinance.get("BTC-USD");
			BigDecimal price = stock.getQuote().getPrice();
			return new Gson().toJson(price);
		});

		get("/overTime", (req, res) -> {
			res.type("application/json");
			Calendar from = Calendar.getInstance();
			Calendar to = Calendar.getInstance();
			from.add(Calendar.YEAR, -5); // from 5 years ago

			Stock google = YahooFinance.get("GOOG", from, to, Interval.WEEKLY);

//			BigDecimal price = google.getQuote().getPrice();
			return new Gson().toJson(google);
		});

		get("/getTicker", "application/json", (request, response) -> {
			String id = request.queryParams("collId");
			return "HI " + id;
		});

		Calendar from = Calendar.getInstance();
		Calendar to = Calendar.getInstance();
//        Stock google = YahooFinance.get("GOOG");
//        List<HistoricalQuote> googleHistQuotes = google.getHistory(from, to, Interval.WEEKLY);
//        System.out.println(googleHistQuotes);
		StopPriceAndTime i = new StopPriceAndTime();

		Calendar calNewYork = Calendar.getInstance();
		calNewYork.setTimeZone(TimeZone.getTimeZone("America/New_York"));

		Calendar openTime = Calendar.getInstance();
		Calendar closeTime = Calendar.getInstance();
		closeTime.setTimeZone(TimeZone.getTimeZone("America/New_York"));

		openTime.add(Calendar.HOUR_OF_DAY, 9);
		closeTime.set(Calendar.HOUR_OF_DAY, 16);
		closeTime.get(Calendar.HOUR_OF_DAY);
//        Model m = new Model();
//        linearRegression(m.getAllStock());

//        ArrayList<ArrayList<Integer>> test = new ArrayList<>();
//        for (int j = 0; j < 3; j++) {
//            test.add(new ArrayList());
//        }
//        Thread t1 = new Thread(i);
//        t1.start();
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

		double gM = 0;
		double gB = 0;
		double learning_rate = 0.0000000000000000000000001;
		double totalError = 0;

		for (int i = 0; i < s.size(); i++) {
			double x = epoch.get(i).doubleValue();
			double y = s.get(i).getPrice().doubleValue();

			double guess = gM * x + gB;
			double error = y - guess;
			totalError += (guess - y) * (guess - y);

			gM = gM + error * x * learning_rate;
			gB = gB + error * learning_rate;

			//not Gradient Descent
			num += (x - xMean) * (y - yMean);
			den += (x - xMean) * (x - xMean);
		}

		double m = num / den;
		double b = yMean - m * xMean;
		double x = Instant.now().toEpochMilli();
		double y = m * x + b;

		double res = 0;
		double tot = 0;
		double resGradientDescent = 0;
		double totGradientDescent = 0;
		for (int i = 0; i < s.size(); i++) {
			double yPriceReal = s.get(i).getPrice().doubleValue();
			res = (yPriceReal - y) * (yPriceReal - y);
			tot = (yPriceReal - yMean) * (yPriceReal - yMean);
		}
		double r = 1 - (res / tot);
		double rSquared = (r * r);

		double yGradientDescent = gM * x + gB;
		for (int i = 0; i < s.size(); i++) {
			double yPriceReal = s.get(i).getPrice().doubleValue();
			resGradientDescent = (yPriceReal - yGradientDescent) * (yPriceReal - yGradientDescent);
			totGradientDescent = (yPriceReal - yMean) * (yPriceReal - yMean);
		}
		double rGradientDescent = 1 - (resGradientDescent / totGradientDescent);
		double rSquaredGradientDescent = (rGradientDescent * rGradientDescent);

		System.out.println("this is y" + " " + y + " " + b + " " + m);
		System.out.println("this is rSquared" + " " + rSquared);
		System.out.println("this is yGradientDescent " + " " + yGradientDescent);
		System.out.println("this is rSquared for Gradient Descent" + " " + rSquaredGradientDescent);

		Calendar calendar = Calendar.getInstance();
		Date today = calendar.getTime();
		System.out.println("today:    " + today);
		calendar.add(Calendar.DAY_OF_YEAR, 665);
		Date tomorrow = calendar.getTime();
		double xTomorrow = tomorrow.toInstant().toEpochMilli();
		double test = m * xTomorrow + b;
		double testGra = gM * xTomorrow + gB;
		System.out.println(test + " " + tomorrow);
		System.out.println(testGra);
	}

}
