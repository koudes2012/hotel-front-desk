package com.oceanluxury.frontdesk.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.oceanluxury.common.Constant;
import com.oceanluxury.frontdesk.service.imp.ReservationServiceImpl;
import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
import com.oceanluxury.model.RoomInfo;
import com.opensymphony.xwork2.ActionSupport;

public class CheckInOutAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String roomType;
	private List<RoomInfo> roomInfoList;
    private RoomInfoServiceImp roomInfoService;
    private ReservationServiceImpl reservationService;

    public ReservationServiceImpl getReservationService() {
		return reservationService;
	}
	public void setReservationService(ReservationServiceImpl reservationService) {
		this.reservationService = reservationService;
	}
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
    
    public String checkIn() throws Exception {
    	String roomId = ServletActionContext.getRequest().getParameter("roomId");
    	roomInfoService.checkInOut(roomId, Constant.roomStatus_2);
    	this.roomInfoList = roomInfoService.checkInOutSearch(roomType);
        return SUCCESS;
    }
    
    public String checkOut() throws Exception {
    	String roomId = ServletActionContext.getRequest().getParameter("roomId");
    	roomInfoService.checkInOut(roomId, Constant.roomStatus_0);
    	String orderNum = ServletActionContext.getRequest().getParameter("orderNum");
    	reservationService.updateReservation(orderNum, roomId, Constant.reserStatus_3);
    	this.roomInfoList = roomInfoService.checkInOutSearch(roomType);
        return SUCCESS;
    }

}
