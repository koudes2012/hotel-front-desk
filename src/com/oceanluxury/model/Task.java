package com.oceanluxury.model;

import java.util.Date;

public class Task {
	
    private int taskId;
    private String taskType;
    private String taskTypeName;
    private String taskDesc;
    private Date assignedDate;
    private String assignedTime;
    private Date clearanceDate;
    private String taskStatus;
    private String taskStatusName;
    private int roomId;
    private String roomName;
    private String assignedDateStr;
    private String clearanceDateStr;
	
	public String getAssignedDateStr() {
		return assignedDateStr;
	}
	public void setAssignedDateStr(String assignedDateStr) {
		this.assignedDateStr = assignedDateStr;
	}
	public String getClearanceDateStr() {
		return clearanceDateStr;
	}
	public void setClearanceDateStr(String clearanceDateStr) {
		this.clearanceDateStr = clearanceDateStr;
	}
	public String getTaskTypeName() {
		return taskTypeName;
	}
	public void setTaskTypeName(String taskTypeName) {
		this.taskTypeName = taskTypeName;
	}
	public String getTaskStatusName() {
		return taskStatusName;
	}
	public void setTaskStatusName(String taskStatusName) {
		this.taskStatusName = taskStatusName;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
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
