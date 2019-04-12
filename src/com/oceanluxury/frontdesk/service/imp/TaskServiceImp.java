package com.oceanluxury.frontdesk.service.imp;

import com.oceanluxury.frontdesk.dao.imp.TaskDaoImp;

public class TaskServiceImp {

    private TaskDaoImp taskDao;

	public TaskDaoImp getTaskDao() {
		return taskDao;
	}
	public void setTaskDao(TaskDaoImp taskDao) {
		this.taskDao = taskDao;
	}
	
}
