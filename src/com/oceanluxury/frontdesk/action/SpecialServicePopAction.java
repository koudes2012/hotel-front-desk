package com.oceanluxury.frontdesk.action;

import com.oceanluxury.common.Constant;
import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
import com.oceanluxury.frontdesk.service.imp.TaskServiceImp;
import com.oceanluxury.model.Task;
import com.oceanluxury.util.DateUtils;
import com.opensymphony.xwork2.ActionSupport;

public class SpecialServicePopAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String roomId;
	private String roomName;
	private String morningCallDate;
	private String morningCallTime;
	private String taxiCallDate;
	private String taxiCallTime;
	private String taxiLocation;
	private String remark;
    private RoomInfoServiceImp roomInfoService;
    private TaskServiceImp taskService;

    public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getMorningCallDate() {
		return morningCallDate;
	}
	public void setMorningCallDate(String morningCallDate) {
		this.morningCallDate = morningCallDate;
	}
	public String getMorningCallTime() {
		return morningCallTime;
	}
	public void setMorningCallTime(String morningCallTime) {
		this.morningCallTime = morningCallTime;
	}
	public String getTaxiCallDate() {
		return taxiCallDate;
	}
	public void setTaxiCallDate(String taxiCallDate) {
		this.taxiCallDate = taxiCallDate;
	}
	public String getTaxiCallTime() {
		return taxiCallTime;
	}
	public void setTaxiCallTime(String taxiCallTime) {
		this.taxiCallTime = taxiCallTime;
	}
	public String getTaxiLocation() {
		return taxiLocation;
	}
	public void setTaxiLocation(String taxiLocation) {
		this.taxiLocation = taxiLocation;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
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

    public String morningCall() throws Exception {
		Task task = new Task();
    	task.setAssignedDate(DateUtils.transferdate(this.getMorningCallDate(), "MM/dd/yyyy"));
    	task.setAssignedTime(this.getMorningCallTime());
    	task.setTaskStatus(Constant.taskStatus_1);
    	task.setTaskType(Constant.taskType_1);
    	task.setRoomId(Integer.parseInt(this.getRoomId()));
		taskService.insertTask(task);
		
        return SUCCESS;
    }
    
    public String taxiCall() throws Exception {
		Task task = new Task();
    	task.setAssignedDate(DateUtils.transferdate(this.getTaxiCallDate(), "MM/dd/yyyy"));
    	task.setAssignedTime(this.getTaxiCallTime());
    	task.setTaskDesc(this.getTaxiLocation());
    	task.setTaskStatus(Constant.taskStatus_1);
    	task.setTaskType(Constant.taskType_2);
    	task.setRoomId(Integer.parseInt(this.getRoomId()));
		taskService.insertTask(task);
		
        return SUCCESS;
    }
    
    public String remark() throws Exception {
		Task task = new Task();
    	task.setTaskDesc(this.getRemark());
    	task.setTaskStatus(Constant.taskStatus_1);
    	task.setTaskType(Constant.taskType_3);
    	task.setRoomId(Integer.parseInt(this.getRoomId()));
		taskService.insertTask(task);
		
        return SUCCESS;
    }
}
