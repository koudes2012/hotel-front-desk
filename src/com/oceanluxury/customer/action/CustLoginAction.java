package com.oceanluxury.customer.action;

import org.apache.struts2.ServletActionContext;

import com.oceanluxury.frontdesk.service.imp.UserServiceImp;
import com.oceanluxury.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class CustLoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String email;
    private String password;
    private UserServiceImp userService;
    
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
    	User user = userService.loginCheck(email, password);
    	if (user == null) {
    		return ERROR;
        }
    	
    	ServletActionContext.getRequest().getSession().setAttribute("user", user);
        return SUCCESS;
    }

}
