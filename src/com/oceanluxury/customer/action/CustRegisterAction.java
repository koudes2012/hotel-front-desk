package com.oceanluxury.customer.action;

import org.apache.struts2.ServletActionContext;

import com.oceanluxury.frontdesk.service.imp.UserServiceImp;
import com.oceanluxury.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class CustRegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private String passwordInput;
    private String passwordConfirm;
    private UserServiceImp userService;

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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPasswordInput() {
		return passwordInput;
	}
	public void setPasswordInput(String passwordInput) {
		this.passwordInput = passwordInput;
	}
	public String getPasswordConfirm() {
		return passwordConfirm;
	}
	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}
	public UserServiceImp getUserService() {
		return userService;
	}
	public void setUserService(UserServiceImp userService) {
		this.userService = userService;
	}

	/**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setPhoneNumber(phoneNumber);
        user.setPassword(passwordConfirm);
    	userService.insertUser(user);
        ServletActionContext.getRequest().getSession().setAttribute("user", user);
        return SUCCESS;
    }

}
