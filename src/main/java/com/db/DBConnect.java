package com.db;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	   private static Connection conn;
	   
	   public static Connection getConn()
	   {
		   try {
          //Driver lode
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   //Connection
			   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_2","root","12345");
			   
		   }catch (Exception e) {
			  e.printStackTrace();
		   }
		   return conn;
	   }
}