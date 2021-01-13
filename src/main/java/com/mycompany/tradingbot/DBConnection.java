package com.mycompany.tradingbot;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static Connection sConnection;
    //this method gives the Connection with the database
    public static Connection getInstance() throws ClassNotFoundException, SQLException {
        String host, db, user, password, serverTimezone;
        
       
        host = "127.0.0.1:33060";
        db = "cassandra";
        user = "homestead";
        serverTimezone = "?useTimezone=true&serverTimezone=GMT";
        password = "secret";
        
        if (sConnection == null || sConnection.isClosed()) {
            String url = "jdbc:mysql://" + host + "/" + db + serverTimezone;
            Class.forName("com.mysql.cj.jdbc.Driver");
            sConnection = DriverManager.getConnection(url, user, password);
        }

        return sConnection;
    }
}
