package com.oceanluxury.model;

import java.util.Date;

public class Task {
	
    private int taskId;
    private String taskType;
    private String taskDesc;
    private Date assignedDate;
    private String assignedTime;
    private Date clearanceDate;
    private String taskStatus;
    
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	public String getTaskType() {
		return taskType;
	}
	public void setTaskType(String taskType) {
		this.taskType = taskType;
	}
	public String getTaskDesc() {
		return taskDesc;
	}
	public void setTaskDesc(String taskDesc) {
		this.taskDesc = taskDesc;
	}
	public Date getAssignedDate() {
		return assignedDate;
	}
	public void setAssignedDate(Date assignedDate) {
		this.assignedDate = assignedDate;
	}
	public String getAssignedTime() {
		return assignedTime;
	}
	public void setAssignedTime(String assignedTime) {
		this.assignedTime = assignedTime;
	}
	public Date getClearanceDate() {
		return clearanceDate;
	}
	public void setClearanceDate(Date clearanceDate) {
		this.clearanceDate = clearanceDate;
	}
	public String getTaskStatus() {
		return taskStatus;
	}
	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}
    
}
