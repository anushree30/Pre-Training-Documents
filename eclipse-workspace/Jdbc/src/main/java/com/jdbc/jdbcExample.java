package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class jdbcExample {
   static final String DB_URL = "jdbc:mysql://localhost:3306/employees?";
   static final String USER = "root";
   static final String PASS = "3012";
   static final String QUERY = "SELECT id, username FROM employee";

   public static void main(String[] args) {
      // Open a connection
      try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(QUERY);
      ) {		      
         while(rs.next()){
            //Display values
            System.out.print("ID: " + rs.getInt("id"));
            System.out.print(", username: " + rs.getString("username"));
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } 
   }
}