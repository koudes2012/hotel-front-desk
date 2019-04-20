package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.Item;

public class ItemDaoImp extends SqlSessionDaoSupport {
	
	public List<Item> searchItem(Map map) {
		return getSqlSession().selectList("searchItem", map);
	}
	
	public void insertTaskItem(Map map) {
		getSqlSession().insert("insertTaskItem", map);
	}
	
	public List<Item> getTaskDetail(Map map) {
		return getSqlSession().selectList("getTaskDetail", map);
	}
	
}
