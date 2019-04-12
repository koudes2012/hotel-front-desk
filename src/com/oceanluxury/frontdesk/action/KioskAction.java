package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
import com.oceanluxury.model.RoomInfo;
import com.opensymphony.xwork2.ActionSupport;

public class KioskAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String roomType;
	private List<RoomInfo> roomInfoList;
    private RoomInfoServiceImp roomInfoService;

    public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public List<RoomInfo> getRoomInfoList() {
		return roomInfoList;
	}
	public void setRoomInfoList(List<RoomInfo> roomInfoList) {
		this.roomInfoList = roomInfoList;
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
    	this.roomInfoList = roomInfoService.checkInOutSearch(roomType);
        return SUCCESS;
    }

}
