package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class ConnectDB {

    private Connection conn = null;
    private Statement stmt = null;
    public ConnectDB() {
    	hasDriver();
    	
    }
    protected void hasDriver() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            System.out.println("Invalid Driver!! Please check this driver...");
        }

    }
    protected Connection openConnect() {
        try {
            if (conn == null) {
                hasDriver();
                String url = "jdbc:mysql://localhost/admin";
                conn = DriverManager.getConnection(url, "admin", "123123");
            }
        } catch (Exception e) {
            System.out.println("Error Connecton! Please check url or username and password of mysql!");
        }
        return conn;
    }

    protected Statement getStatement() {
        try {
            if (stmt == null) {
                stmt = openConnect().createStatement();
            }
        } catch (Exception e) {
            System.out.println("Please check statement");
        }
        return stmt;
    }

    protected void closeConnect() {
        try {

            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            System.out.println("Please check close connect, stmt, resutlset");
        }

    }

}