package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.RoomOrderServiceImp;
import com.oceanluxury.frontdesk.service.imp.UserServiceImp;
import com.oceanluxury.model.RoomOrder;
import com.opensymphony.xwork2.ActionSupport;

public class SpecialServiceAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String roomType;
	private List<RoomOrder> roomOrderList;
    private RoomOrderServiceImp roomOrderService;

	public void setRoomOrderService(RoomOrderServiceImp roomOrderService) {
        this.roomOrderService = roomOrderService;
    }
	
	public List<RoomOrder> getRoomOrderList() {
		return roomOrderList;
	}

	public void setRoomOrderList(List<RoomOrder> roomOrderList) {
		this.roomOrderList = roomOrderList;
	}
	
    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    /**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
    	this.roomOrderList = roomOrderService.orderSearch(roomType);
        return SUCCESS;
    }

}
