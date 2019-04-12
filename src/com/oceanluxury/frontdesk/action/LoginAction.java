package com.oceanluxury.frontdesk.action;

import com.oceanluxury.frontdesk.service.imp.UserServiceImp;
import com.oceanluxury.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String username;
    private String password;
    private UserServiceImp userService;

	public void setUserService(UserServiceImp userService) {
        this.userService = userService;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
    	User user = userService.loginCheck(username, password);
    	if (user == null) {
    		return ERROR;
        }
    	
        return SUCCESS;
    }

}
