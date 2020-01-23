/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

import java.math.BigDecimal;
import java.sql.Timestamp;
/**
 *
 * @author Cian
 */
public class StockTrade {
    
    private int id;
    private String ticker;
    private BigDecimal price;
    private java.sql.Timestamp myDate;
    

    public StockTrade(int id, String ticker, BigDecimal price) {
        this.id = id;
        this.ticker = ticker;
        this.price = price;
    }

    public StockTrade(String ticker, BigDecimal price, Timestamp myDate) {
        this.ticker = ticker;
        this.price = price;
        this.myDate = myDate;
    }

    public StockTrade(int id, String ticker, BigDecimal price, Timestamp myDate) {
        this.id = id;
        this.ticker = ticker;
        this.price = price;
        this.myDate = myDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTicker() {
        return ticker;
    }

    public void setTicker(String ticker) {
        this.ticker = ticker;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Timestamp getMyDate() {
        return myDate;
    }

    public void setMyDate(Timestamp myDate) {
        this.myDate = myDate;
    }
  
   
    
    
}
