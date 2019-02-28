package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
import com.oceanluxury.model.RoomInfo;
import com.opensymphony.xwork2.ActionSupport;

public class RoomStatusAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String buildingId;
	private List<RoomInfo> roomInfoList;
    private RoomInfoServiceImp roomInfoService;

	public void setRoomInfoService(RoomInfoServiceImp roomInfoService) {
        this.roomInfoService = roomInfoService;
    }
	
	public List<RoomInfo> getRoomInfoList() {
		return roomInfoList;
	}

	public void setRoomInfoList(List<RoomInfo> roomInfoList) {
		this.roomInfoList = roomInfoList;
	}
	
    public String getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(String buildingId) {
        this.buildingId = buildingId;
    }

    /**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
    	this.roomInfoList = roomInfoService.roomSearch(buildingId);
        return SUCCESS;
    }

}
