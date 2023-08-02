//DAO - stands for Data Access Object: It is a simple Java class which stores the JDBC logic

package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;

public class UserDAO {
	private Connection conn;
//first and foremost we called the method of the connection class
	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	//method to store data in database for new user
	
	//this method is called whenever we want to store the data of the user in the database
	public boolean addUser(UserDetails us) {
	boolean f= false;
	
		try {
			
			//inserting the data filled by the user into the database
			String query = "insert into user (name, email, password) values(?,?,?)";
			
			//get the parameterized object
			PreparedStatement ps = conn.prepareStatement(query);
			//set the values to query
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return f;
	}
	
	public UserDetails loginUser(UserDetails us) {
		//let's check whether the data is stored in the database or not--authentication
		UserDetails user=null;
		try {
			String query = "select * from user where email=? and password=?";
			
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getPassword());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				//retrieving the data 
				//f=true;
				user = new UserDetails();
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setId(rs.getInt("id"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}
	
	

}
