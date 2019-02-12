package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.User;

public class UserDaoImp extends SqlSessionDaoSupport {

	public List<User> findUserByName(String userName) {
		return getSqlSession().selectList("findUserByName", userName);
	}
	
}
