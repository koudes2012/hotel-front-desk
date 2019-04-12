package com.oceanluxury.frontdesk.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.ReservationServiceImpl;
import com.oceanluxury.model.Reservation;
import com.opensymphony.xwork2.ActionSupport;

public class OrderSearchPopAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String orderNum;
	private String roomIdOld;
	private String roomId;
	private String roomType;
	private String moveInDate;
	private String moveOutDate;
	private List<Reservation> reservationList;
    private ReservationServiceImpl reservationService;

    public String getRoomIdOld() {
		return roomIdOld;
	}
	public void setRoomIdOld(String roomIdOld) {
		this.roomIdOld = roomIdOld;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getMoveInDate() {
		return moveInDate;
	}
	public void setMoveInDate(String moveInDate) {
		this.moveInDate = moveInDate;
	}
	public String getMoveOutDate() {
		return moveOutDate;
	}
	public void setMoveOutDate(String moveOutDate) {
		this.moveOutDate = moveOutDate;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
    public List<Reservation> getReservationList() {
		return reservationList;
	}
	public void setReservationList(List<Reservation> reservationList) {
		this.reservationList = reservationList;
	}
	public ReservationServiceImpl getReservationService() {
		return reservationService;
	}
	public void setReservationService(ReservationServiceImpl reservationService) {
		this.reservationService = reservationService;
	}
	
	@Override
    public String execute() throws Exception {
		Reservation reservation = reservationService.getReservation(orderNum).get(0);
		
        moveInDate = reservation.getMoveInDateStr();
        moveOutDate = reservation.getMoveOutDateStr();
        roomIdOld = reservation.getRoomId();
        
		reservationList = reservationService.orderSearchPop(
				reservation,
    			roomType);
        return SUCCESS;
    }
    
    public String approve() throws Exception {
    	reservationService.approve(orderNum, roomIdOld, roomId);
        return SUCCESS;
    }
}
