package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.common.Constant;
import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
import com.oceanluxury.frontdesk.service.imp.TaskServiceImp;
import com.oceanluxury.model.RoomInfo;
import com.oceanluxury.model.Task;
import com.oceanluxury.util.DateUtils;
import com.opensymphony.xwork2.ActionSupport;

public class MaintenancePopAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String roomId;
	private String roomName;
	private String housekeepingDate;
	private String housekeepingTime;
	private String maintenanceFrom;
	private String maintenanceTo;
    private RoomInfoServiceImp roomInfoService;
    private TaskServiceImp taskService;
    
    public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getHousekeepingDate() {
		return housekeepingDate;
	}
	public void setHousekeepingDate(String housekeepingDate) {
		this.housekeepingDate = housekeepingDate;
	}
	public String getHousekeepingTime() {
		return housekeepingTime;
	}
	public void setHousekeepingTime(String housekeepingTime) {
		this.housekeepingTime = housekeepingTime;
	}
	public String getMaintenanceFrom() {
		return maintenanceFrom;
	}
	public void setMaintenanceFrom(String maintenanceFrom) {
		this.maintenanceFrom = maintenanceFrom;
	}
	public String getMaintenanceTo() {
		return maintenanceTo;
	}
	public void setMaintenanceTo(String maintenanceTo) {
		this.maintenanceTo = maintenanceTo;
	}
	public RoomInfoServiceImp getRoomInfoService() {
		return roomInfoService;
	}
	public void setRoomInfoService(RoomInfoServiceImp roomInfoService) {
		this.roomInfoService = roomInfoService;
	}
	public TaskServiceImp getTaskService() {
		return taskService;
	}
	public void setTaskService(TaskServiceImp taskService) {
		this.taskService = taskService;
	}

	/**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
    
    public String housekeeping() throws Exception {
		Task task = new Task();
    	task.setAssignedDate(DateUtils.transferdate(this.getHousekeepingDate(), "MM/dd/yyyy"));
    	task.setAssignedTime(this.getHousekeepingTime());
    	task.setTaskStatus(Constant.taskStatus_1);
    	task.setTaskType(Constant.taskType_4);
    	task.setRoomId(Integer.parseInt(this.getRoomId()));
		taskService.insertTask(task);
		
        return SUCCESS;
    }
    
    public String maintenance() throws Exception {
		Task task = new Task();
    	task.setAssignedDate(DateUtils.transferdate(this.getMaintenanceFrom(), "MM/dd/yyyy"));
    	task.setClearanceDate(DateUtils.transferdate(this.getMaintenanceTo(), "MM/dd/yyyy"));
    	task.setTaskStatus(Constant.taskStatus_1);
    	task.setTaskType(Constant.taskType_5);
    	task.setRoomId(Integer.parseInt(this.getRoomId()));
		taskService.insertTask(task);
		
        return SUCCESS;
    }

}
