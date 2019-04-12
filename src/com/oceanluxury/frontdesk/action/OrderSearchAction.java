package com.oceanluxury.frontdesk.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.oceanluxury.frontdesk.service.imp.ReservationServiceImpl;
import com.oceanluxury.frontdesk.service.imp.RoomInfoServiceImp;
import com.oceanluxury.model.Reservation;
import com.oceanluxury.model.RoomInfo;
import com.opensymphony.xwork2.ActionSupport;

public class OrderSearchAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String roomType;
	private List<Reservation> reservationList;
    private ReservationServiceImpl reservationService;

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
    	this.reservationList = reservationService.orderSearch(roomType);
        return SUCCESS;
    }
    
    public String del() throws Exception {
    	String orderNum = ServletActionContext.getRequest().getParameter("orderNum");
    	reservationService.deleteReservation(orderNum);
    	this.reservationList = reservationService.orderSearch(roomType);
        return SUCCESS;
    }

}
