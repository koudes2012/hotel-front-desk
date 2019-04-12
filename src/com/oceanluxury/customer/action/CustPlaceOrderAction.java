package com.oceanluxury.customer.action;

import java.util.List;

import com.oceanluxury.frontdesk.service.imp.ReservationServiceImpl;
import com.oceanluxury.model.Reservation;
import com.opensymphony.xwork2.ActionSupport;

public class CustPlaceOrderAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String arrivalDate;
    private String departureDate;
	private String firstName;
    private String lastName;
    private String cardNumber;
    private String address;
    private String city;
    private String postcode;
    private String email;
    private String phone;
    private String country;
    private String orderTotal;
    private String paymentMethod;
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
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getOrderTotal() {
		return orderTotal;
	}
	public void setOrderTotal(String orderTotal) {
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
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	
	@Override
    public String execute() throws Exception {
		reservationService.placeOrder(
				arrivalDate,
			    departureDate,
				firstName, 
				lastName, 
				cardNumber, 
				address, 
				city, 
				postcode, 
				email, 
				phone, 
				country, 
				orderTotal, 
				paymentMethod, 
				reservationList);
        return SUCCESS;
    }

}
