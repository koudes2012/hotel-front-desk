package com.oceanluxury.frontdesk.dao;

import java.util.List;

import com.oceanluxury.model.User;

public interface UserDao {

    /**
     * find user by name
	 */
    public List<User> findUserByName(String userName);

}
