

//Contains the Database connection code

package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn()
	{
	

	
	try {
		if(conn==null)
		//load the driver
		Class.forName("com.mysql.jdbc.Driver");
		
		//creating a connection
		String url= "jdbc:mysql://localhost:3306/enotes";
		String username = "root";
		String password = "system";
		
		conn = DriverManager.getConnection(url, username, password);
		
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	return conn;
	
}
}
	



