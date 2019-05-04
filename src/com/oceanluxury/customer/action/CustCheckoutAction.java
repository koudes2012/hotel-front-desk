package com.oceanluxury.customer.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.ReservationServiceImpl;
import com.oceanluxury.model.Reservation;
import com.opensymphony.xwork2.ActionSupport;

public class CustCheckoutAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String arrivalDate;
    private String departureDate;
	private int orderTotal;
	private List<Reservation> reservationList;
    private ReservationServiceImpl reservationService;
    
    public String getArrivalDate() {
		return arrivalDate;
	}
	public void setArrivalDate(String arrivalDate) {
		this.arrivalDate = arrivalDate;
	}
	public String getDepartureDate() {
		return departureDate;
	}
	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}
	public int getOrderTotal() {
		return orderTotal;
	}
	public void setOrderTotal(int orderTotal) {
		this.orderTotal = orderTotal;
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
	
	/**
     * Login process
	 */
    @Override
    public String execute() throws Exception {
    	orderTotal = reservationService.bookRoom(this.reservationList);
        return SUCCESS;
    }

}
