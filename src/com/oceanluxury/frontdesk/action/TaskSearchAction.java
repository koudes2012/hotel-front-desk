package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.TaskServiceImp;
import com.oceanluxury.model.Task;
import com.opensymphony.xwork2.ActionSupport;

public class TaskSearchAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String taskId;
	private String taskType;
	private String taskStatus;
	private List<Task> taskList;
    private TaskServiceImp taskService;

	public String getTaskType() {
		return taskType;
	}
	public void setTaskType(String taskType) {
		this.taskType = taskType;
	}
	public String getTaskStatus() {
		return taskStatus;
	}
	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}
	public List<Task> getTaskList() {
		return taskList;
	}
	public void setTaskList(List<Task> taskList) {
		this.taskList = taskList;
	}
	public TaskServiceImp getTaskService() {
		return taskService;
	}
	public void setTaskService(TaskServiceImp taskService) {
		this.taskService = taskService;
	}
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	
	@Override
    public String execute() throws Exception {
    	this.taskList = taskService.searchTask(taskType, taskStatus);
        return SUCCESS;
    }
    
    public String close() throws Exception {
    	taskService.updateTask(taskId);
    	this.taskList = taskService.searchTask(taskType, taskStatus);
        return SUCCESS;
    }
}
