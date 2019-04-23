package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.Task;

public class TaskDaoImp extends SqlSessionDaoSupport {
	
	public void insertTask(Task task) {
		getSqlSession().insert("insertTask", task);
	}
	
	public List<Task> searchTask(Map map) {
		return getSqlSession().selectList("searchTask", map);
	}
	
	public void deleteTask(Map map) {
		getSqlSession().delete("deleteTask", map);
	}
	
	public void updateTask(Map map) {
		getSqlSession().update("updateTask", map);
	}
	
	public List<Task> searchRoomByTaskTypes(Map map) {
		return getSqlSession().selectList("searchRoomByTaskTypes", map);
	}
	
}
