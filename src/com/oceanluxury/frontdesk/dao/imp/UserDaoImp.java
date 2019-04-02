package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.User;

public class UserDaoImp extends SqlSessionDaoSupport {

	public List<User> findUserByEmail(String email) {
		return getSqlSession().selectList("findUserByEmail", email);
	}
	
	public void insertUser(User user) {
		getSqlSession().insert("insertUser", user);
	}
	
}
