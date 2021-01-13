/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import static com.mycompany.tradingbot.NewMain.linearRegression;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Clock;
import java.time.Instant;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Map;
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
				Thread.sleep(20000);
			} catch (InterruptedException e) {
				return;
			}
			Stock stock;
			try {
				long now = Instant.now().toEpochMilli();
				Timestamp time = new Timestamp(now);
				ArrayList<Stock> allStocks = new ArrayList<>();
				ArrayList<StockTrade> stockForDatabase = new ArrayList<>();
				stockForDatabase.clear();
				StockTrade s = null;
				String[] symbols = new String[]{"INTC", "BABA", "TSLA", "AIR.PA","MMM","ABT","ABBV","ABMD","ACN","ATVI","ADBE","AMD","AAP","AES","AFL","A","APD","AKAM",
					"ALK","ALB","ARE","ALXN","ALGN","ALLE","LNT","ALL","GOOGL","GOOG","MO","AMZN","AMCR"};
				Map<String, Stock> stocks = YahooFinance.get(symbols); // single request
				for (String symbol : symbols) {
					allStocks.add(stocks.get(symbol));
				}
				for (int i = 0; i < symbols.length; i++) {
					BigDecimal price = allStocks.get(i).getQuote().getPrice();
					s = new StockTrade(symbols[i], price, time);
					stockForDatabase.add(s);
				}

				Model m = new Model();

				Calendar closeTime = Calendar.getInstance();
				closeTime.setTimeZone(TimeZone.getTimeZone("America/New_York"));

				Calendar calNewYork = Calendar.getInstance();
				calNewYork.setTimeZone(TimeZone.getTimeZone("America/New_York"));

				calNewYork.get(Calendar.HOUR_OF_DAY);
				closeTime.set(Calendar.HOUR_OF_DAY, 16);

				if (calNewYork.get(Calendar.HOUR_OF_DAY) >= closeTime.get(Calendar.HOUR_OF_DAY)) {
					System.out.println("Market Closed");
//		    StopPriceAndTime i = new StopPriceAndTime();
//		    Thread t1 = new Thread(i);
//                    t1.start();
					return;
				}
				m.addStock(stockForDatabase);
				//this will start the method that will try to make a prediction
//                linearRegression(m.getAllStock());

			} catch (IOException ex) {
				Logger.getLogger(PriceAndTime.class.getName()).log(Level.SEVERE, null, ex);
			} catch (SQLException ex) {
				Logger.getLogger(PriceAndTime.class.getName()).log(Level.SEVERE, null, ex);
			}

		}
	}
}
