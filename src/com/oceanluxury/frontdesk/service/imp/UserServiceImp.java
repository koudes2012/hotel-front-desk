package com.oceanluxury.frontdesk.service.imp;

import java.util.List;

import com.oceanluxury.frontdesk.dao.imp.UserDaoImp;
import com.oceanluxury.frontdesk.service.UserService;
import com.oceanluxury.model.User;

public class UserServiceImp implements UserService {

    private UserDaoImp userDao;

    public UserDaoImp getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDaoImp userDao) {
        this.userDao = userDao;
    }

    public boolean loginCheck(String username, String password) {
    	
    	List<User> userList = userDao.findUserByName(username);
    	
    	Boolean returnFlg = false;
    	if (userList != null && userList.size() == 1) {
    		String passwordFromDB = userList.get(0).getPassword();
    		
    		if (password.equals(passwordFromDB)) {
    			returnFlg = true;
    		}
    	}
    	
    	return returnFlg;
    }
}
