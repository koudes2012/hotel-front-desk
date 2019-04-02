package com.oceanluxury.frontdesk.service;

import com.oceanluxury.model.User;

public interface UserService {

    /**
     * login check
	 */
    public boolean loginCheck(String userName, String password);
    
    public void insertUser(User user);

}
