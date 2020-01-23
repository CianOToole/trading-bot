package com.mycompany.tradingbot;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SnackTableGateway {

    private static ArrayList<StockTrade> stock = new ArrayList<>();
    private static final String TABLE_NAME = "stocks";
    private static final String COLUMN_ID = "id";
    private static final String COLUMN_TICKER = "ticker";
    private static final String COLUMN_PRICE = "price";
    private static final String COLUMN_TIME = "time";

    private Connection mConnection;

    public SnackTableGateway(Connection connection) {
        mConnection = connection;
    }

    public void insertStock(StockTrade s) throws SQLException {

        String query;
        PreparedStatement stmt;
        int numRowsAffected;
        int id;
        java.sql.Timestamp time;

        //SQL query that is sent the DB
        query = "INSERT INTO " + TABLE_NAME + " ("
                + COLUMN_TICKER + ", "
                + COLUMN_PRICE + ", "
                + COLUMN_TIME
                + ") VALUES (?, ?, ?)";

        //the prepareStatement set the values for the above query
        stmt = mConnection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        stmt.setString(1, s.getTicker());
        stmt.setBigDecimal(2, s.getPrice());
       stmt.setTimestamp(3, s.getMyDate());

        //the query is executed and the executeUpdate give back an int
        numRowsAffected = stmt.executeUpdate();

        if (numRowsAffected == 1) {

            ResultSet keys = stmt.getGeneratedKeys();
            keys.next();

            id = keys.getInt(1);
            s.setId(id);

        }

    }

    public ArrayList<StockTrade> selectStock() throws SQLException {
        //Sets the ArrayList to be empty, to be refilled with new Snack objects
        stock.clear();
        String query;
        String ticker;
        BigDecimal price;
        java.sql.Timestamp time;
        int id;

        StockTrade s;
        Statement stmt;
        query = "SELECT * FROM stocks";
        stmt = mConnection.createStatement();
        ResultSet result = stmt.executeQuery(query);

        //Loop through each result from the query 
        while (result.next()) {

            id = result.getInt(1);
            ticker = result.getString(2);
            price = result.getBigDecimal(3);
            time = result.getTimestamp(4);

            //New Snack object is made
            s = new StockTrade(id, ticker, price, time);

            //adds the new snack object to the Arraylist
            stock.add(s);
        }
        //returns the new Arraylist
        return stock;
    }

    public void updateStock(StockTrade s) throws SQLException {
        // sql query used to update a snack in the DB
        String sql = "UPDATE stock SET ticker=?, price=? WHERE id=?";

        //the prepareStatement set the values for the above query
        PreparedStatement stmt = mConnection.prepareStatement(sql);
        stmt.setString(1, s.getTicker());
        stmt.setBigDecimal(2, s.getPrice());
        stmt.setInt(3, s.getId());

        //check to see if the DB for changed
        int rowsUpdated = stmt.executeUpdate();
        if (rowsUpdated > 0) {
            System.out.println("Stock was updated");
            System.out.print("\n");
        }

    }

    public void deleteStock(StockTrade s) throws SQLException {
        // sql query used to delete a snack in the DB
        String sql = "DELETE FROM stocks WHERE id=?";

        PreparedStatement statement = mConnection.prepareStatement(sql);
        statement.setInt(1, s.getId());
        //check to see if the DB for changed
        int rowsDeleted = statement.executeUpdate();
        if (rowsDeleted > 0) {
            System.out.println("\n" + "A user was deleted successfully!" + "\n");
            System.out.println(s.getId());
        }

    }

}
