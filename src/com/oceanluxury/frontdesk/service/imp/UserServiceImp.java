package com.oceanluxury.frontdesk.service.imp;

import java.util.List;

import com.oceanluxury.frontdesk.dao.imp.UserDaoImp;
import com.oceanluxury.model.User;

public class UserServiceImp {

    private UserDaoImp userDao;

    public UserDaoImp getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDaoImp userDao) {
        this.userDao = userDao;
    }

    public User loginCheck(String username, String password) {
    	
    	List<User> userList = userDao.findUserByEmail(username);
    	User user = null;
    	
    	if (userList != null && userList.size() == 1) {
    		String passwordFromDB = userList.get(0).getPassword();
    		
    		if (password.equals(passwordFromDB)) {
    			user = userList.get(0);
    		}
    	}
    	
    	return user;
    }
    
    public void insertUser(User user) {
    	userDao.insertUser(user);
    }
}
