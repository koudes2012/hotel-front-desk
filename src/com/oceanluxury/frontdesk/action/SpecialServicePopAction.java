package com.oceanluxury.frontdesk.action;

import org.apache.struts2.ServletActionContext;

import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
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

    /**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
    	this.roomId = ServletActionContext.getRequest().getParameter("roomId");
        return SUCCESS;
    }

}
