/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import java.io.IOException;
import java.math.BigDecimal;
import yahoofinance.Stock;
import yahoofinance.YahooFinance;

/**
 *
 * @author Cian
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
 Stock stock = YahooFinance.get("INTC");
        BigDecimal price = stock.getQuote(true).getPrice();
        System.out.println(price);
        BigDecimal peg = stock.getStats().getPeg();
        System.out.println(peg);
        stock.getQuote().getVolume();
    }
    
}
