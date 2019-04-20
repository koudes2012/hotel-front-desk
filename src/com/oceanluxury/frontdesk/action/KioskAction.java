package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.ItemServiceImp;
import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
import com.oceanluxury.frontdesk.service.imp.TaskServiceImp;
import com.oceanluxury.model.Item;
import com.oceanluxury.model.RoomInfo;
import com.opensymphony.xwork2.ActionSupport;

public class KioskAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String roomId;
	private List<Item> itemList;
	private List<RoomInfo> roomInfoList;
	private ItemServiceImp itemService;
    private RoomInfoServiceImp roomInfoService;
    private TaskServiceImp taskService; 

    public TaskServiceImp getTaskService() {
		return taskService;
	}
	public void setTaskService(TaskServiceImp taskService) {
		this.taskService = taskService;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public List<Item> getItemList() {
		return itemList;
	}
	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}
	public List<RoomInfo> getRoomInfoList() {
		return roomInfoList;
	}
	public void setRoomInfoList(List<RoomInfo> roomInfoList) {
		this.roomInfoList = roomInfoList;
	}
	public ItemServiceImp getItemService() {
		return itemService;
	}
	public void setItemService(ItemServiceImp itemService) {
		this.itemService = itemService;
	}
	public RoomInfoServiceImp getRoomInfoService() {
		return roomInfoService;
	}
	public void setRoomInfoService(RoomInfoServiceImp roomInfoService) {
		this.roomInfoService = roomInfoService;
	}

	/**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
    	this.itemList = itemService.searchItem();
    	this.roomInfoList = roomInfoService.getRoomPullDownList();
        return SUCCESS;
    }

    public String placeOrder() throws Exception {
		taskService.createKioskTask(roomId, itemList);
        return SUCCESS;
    }
}
