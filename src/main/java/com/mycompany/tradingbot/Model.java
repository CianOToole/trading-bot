package com.mycompany.tradingbot;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Model {

    private static Model instance = null;

    //this method is used to give a Singleton
    public static synchronized Model getInstance() {
        if (instance == null) {
            instance = new Model();
        }
        return instance;
    }

    private SnackTableGateway gateway;

    Model() {
        try {
            //gets the database connection
            Connection conn = DBConnection.getInstance();
            this.gateway = new SnackTableGateway(conn);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Model.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addStock(StockTrade s) throws SQLException{  
        
        try {
            this.gateway.insertStock(s);
        } catch (SQLException e) {
            e.getSQLState();
            System.out.println("error did not add Stock");
        }
    }
}
