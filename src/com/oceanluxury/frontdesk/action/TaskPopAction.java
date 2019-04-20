package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.ItemServiceImp;
import com.oceanluxury.model.Item;
import com.opensymphony.xwork2.ActionSupport;

public class TaskPopAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String taskId;
	private String roomName;
	private List<Item> itemList;
	private ItemServiceImp itemService;
    
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public List<Item> getItemList() {
		return itemList;
	}
	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	public ItemServiceImp getItemService() {
		return itemService;
	}
	public void setItemService(ItemServiceImp itemService) {
		this.itemService = itemService;
	}

	@Override
    public String execute() throws Exception {
    	this.itemList = itemService.getTaskDetail(taskId);
    	this.roomName = itemList.get(0).getRoomName();
        return SUCCESS;
    }
    
}
