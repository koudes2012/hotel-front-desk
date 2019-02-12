package com.oceanluxury.model;

public class User {
	/**
     * userId
	 */
    private int id;
    /**
     * userName
	 */
    private String name;
    /**
     * password
	 */
    private String password;
  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
