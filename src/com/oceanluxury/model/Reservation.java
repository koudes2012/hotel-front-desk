package com.oceanluxury.model;

import java.util.Date;

public class Reservation {
	
	private int orderNum;
	private String roomId;
	private String roomPrice;
	private Date moveInDate;
	private Date moveOutDate;
	private String availableNum;
	private String roomTypeName;
	private String roomType;
	private String quantity;
	private String totalMoney;
	private String payment;
	private String reserStatus;
	private String roomName;
	private String roomStatus;
	private String moveInDateStr;
	private String moveOutDateStr;

	public String getMoveInDateStr() {
		return moveInDateStr;
	}
	public void setMoveInDateStr(String moveInDateStr) {
		this.moveInDateStr = moveInDateStr;
	}
	public String getMoveOutDateStr() {
		return moveOutDateStr;
	}
	public void setMoveOutDateStr(String moveOutDateStr) {
		this.moveOutDateStr = moveOutDateStr;
	}
	public String getReserStatus() {
		return reserStatus;
	}
	public void setReserStatus(String reserStatus) {
		this.reserStatus = reserStatus;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomStatus() {
		return roomStatus;
	}
	public void setRoomStatus(String roomStatus) {
		this.roomStatus = roomStatus;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public Date getMoveInDate() {
		return moveInDate;
	}
	public void setMoveInDate(Date moveInDate) {
		this.moveInDate = moveInDate;
	}
	public Date getMoveOutDate() {
		return moveOutDate;
	}
	public void setMoveOutDate(Date moveOutDate) {
		this.moveOutDate = moveOutDate;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getAvailableNum() {
		return availableNum;
	}
	public void setAvailableNum(String availableNum) {
		this.availableNum = availableNum;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getRoomTypeName() {
		return roomTypeName;
	}
	public void setRoomTypeName(String roomTypeName) {
		this.roomTypeName = roomTypeName;
	}
	public String getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(String totalMoney) {
		this.totalMoney = totalMoney;
	}

}
