package com.oceanluxury.model;

public class Customer {
	/**
     * id
	 */
    private int id;
    /**
     * firstName
	 */
    private String firstName;
    /**
     * lastName
	 */
    private String lastName;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
    
}
