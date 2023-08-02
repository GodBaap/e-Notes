package com.User;


public class UserDetails {
	//attributes-- private to provide encapsulation
	private int id;
	private String name;
	private String email;
	private String password;
	
	public UserDetails() { // Default Ctor
		super();
		
	}
	
	//constructor
	public UserDetails(String name, String email, String password) { //Parameterised Ctor
		super();
		this.name = name;
		this.email = email;
		this.password=password;
	}
	
	//getters and setters--public for modification
	public String getName() {
		return name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


}
