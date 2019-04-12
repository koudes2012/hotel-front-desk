package com.oceanluxury.frontdesk.service.imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;

import com.oceanluxury.common.Constant;
import com.oceanluxury.frontdesk.dao.imp.PaymentDaoImp;
import com.oceanluxury.frontdesk.dao.imp.ReservationDaoImpl;
import com.oceanluxury.frontdesk.dao.imp.RoomInfoDaoImp;
import com.oceanluxury.model.Payment;
import com.oceanluxury.model.Reservation;
import com.oceanluxury.util.DateUtils;

public class ReservationServiceImpl {

    private ReservationDaoImpl reservationDao;
    private PaymentDaoImp paymentDao;
    private RoomInfoDaoImp roomInfoDao;
    
    public RoomInfoDaoImp getRoomInfoDao() {
		return roomInfoDao;
	}
	public void setRoomInfoDao(RoomInfoDaoImp roomInfoDao) {
		this.roomInfoDao = roomInfoDao;
	}
	public ReservationDaoImpl getReservationDao() {
		return reservationDao;
	}
	public void setReservationDao(ReservationDaoImpl reservationDao) {
		this.reservationDao = reservationDao;
	}
	public PaymentDaoImp getPaymentDao() {
		return paymentDao;
	}
	public void setPaymentDao(PaymentDaoImp paymentDao) {
		this.paymentDao = paymentDao;
	}

	public List<Reservation> checkAvailability(String arrivalDate, String departureDate) {
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("moveInDate", arrivalDate);
        condition.put("moveOutDate", departureDate);
    	List<Reservation> roomOrderList = reservationDao.checkAvailability(condition);
    	return roomOrderList;
    }
	
	public int checkout(List<Reservation> reservationList) {
		int orderTotal = 0;
		for (int i=0; i<reservationList.size(); i++) {
			Reservation reservation = reservationList.get(i);
			if (StringUtils.isNotEmpty(reservation.getQuantity())) {
				int price = Integer.valueOf(reservation.getRoomPrice());
				int quantity = Integer.valueOf(reservation.getQuantity());
				int totoalMoney = price*quantity;
				reservation.setTotalMoney(String.valueOf(totoalMoney));
				orderTotal = orderTotal + totoalMoney;
			} else {
				reservationList.remove(i);
				i--;
			}
		}
    	return orderTotal;
    }
	
	public List<Reservation> placeOrder(
			String arrivalDate,
			String departureDate,
			String firstName,
		    String lastName,
		    String cardNumber,
		    String address,
		    String city,
		    String postcode,
		    String email,
		    String phone,
		    String country,
		    String orderTotal,
		    String paymentMethod,
			List<Reservation> reservationList) {
		
		Payment payment = new Payment();
	    String createtimestring = DateUtils.transferdate(new Date(), "yyyy-MM-dd HH:mm:ss") + UUID.randomUUID();
		payment.setPayment(createtimestring);
		payment.setFirstName(firstName);
		payment.setLastName(lastName);
		payment.setCardNumber(cardNumber);
		payment.setAddress(address);
		payment.setCity(city);
		payment.setPostcode(postcode);
		payment.setEmail(email);
		payment.setPhone(phone);
		payment.setCountry(country);
		payment.setOrderTotal(orderTotal);
		payment.setPaymentMethod(paymentMethod);
		paymentDao.insertPayment(payment);
		
		for (int i=0; i<reservationList.size(); i++) {
			Reservation reservation = reservationList.get(i);
			int quantity = Integer.valueOf(reservation.getQuantity());
			String roomType = reservation.getRoomType();
			List<Reservation> availabileRooms = this.getAvailabileRoom(arrivalDate, departureDate, roomType, quantity);
			for (int j=0; j<availabileRooms.size(); j++) {
				Reservation availabileRoom = availabileRooms.get(j);
				reservation.setMoveInDate(DateUtils.transferdate(arrivalDate, "dd-MM-yyyy"));
				reservation.setMoveOutDate(DateUtils.transferdate(departureDate, "dd-MM-yyyy"));
				reservation.setPayment(createtimestring);
				reservation.setRoomId(availabileRoom.getRoomId());
				reservation.setReserStatus(Constant.reserStatus_1);
				reservationDao.insertReservation(reservation);
				
//				Map<String, Object> condition = new HashMap<String, Object>();
//		        condition.put("roomId", availabileRoom.getRoomId());
//		        condition.put("roomStatus", Constant.roomStatus_1);
//		        roomInfoDao.updateRoomInfo(condition);
			}
		}
		
    	return reservationList;
    }
	
	public List<Reservation> getAvailabileRoom(String arrivalDate, String departureDate, String roomType, Integer quantity) {
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("moveInDate", arrivalDate);
        condition.put("moveOutDate", departureDate);
        condition.put("roomType", roomType);
        condition.put("quantity", quantity);
    	List<Reservation> roomOrderList = reservationDao.getAvailabileRoom(condition);
    	return roomOrderList;
    }
	
    public List<Reservation> orderSearch(String roomType) {
    	Map<String, Object> condition = new HashMap<String, Object>();
    	condition.put("roomType", roomType);
        condition.put("systemDate", DateUtils.transferdate(new Date(), "dd-MM-yyyy"));
    	List<Reservation> reservationList = reservationDao.orderSearch(condition);
    	
    	return reservationList;
    }
    
    public void deleteReservation(String orderNum) {
    	List<Reservation> reservationList = this.getReservation(orderNum);
        if (reservationList != null && reservationList.size() == 1) {
			Map<String, Object> condition1 = new HashMap<String, Object>();
			condition1.put("roomId", reservationList.get(0).getRoomId());
			condition1.put("roomStatus", Constant.roomStatus_0);
	        roomInfoDao.updateRoomInfo(condition1);
        }
		
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("orderNum", orderNum);
        condition.put("systemDate", DateUtils.transferdate(new Date(), "dd-MM-yyyy"));
        reservationDao.deleteReservation(condition);
    }
	
    public List<Reservation> getReservation(String orderNum){
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("orderNum", orderNum);
        condition.put("systemDate", DateUtils.transferdate(new Date(), "dd-MM-yyyy"));
        List<Reservation> reservationList = reservationDao.getReservation(condition);
        return reservationList;
	}
	
	public List<Reservation> orderSearchPop(
			Reservation reservation,
			String roomType) {
        
        List<Reservation> reservationList = new ArrayList<Reservation>();
        reservationList.add(reservation);
        reservationList.addAll(
        		this.getAvailabileRoom(
        				reservation.getMoveInDateStr(), 
        				reservation.getMoveOutDateStr(), 
        				roomType, 
        				null));
		
    	return reservationList;
    }
	
	public void approve(String orderNum, String roomIdOld, String roomId) {
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("orderNum", orderNum);
        condition.put("roomId", roomId);
        condition.put("reserStatus", Constant.reserStatus_2);
        reservationDao.updateReservation(condition);
        
    	Map<String, Object> condition1 = new HashMap<String, Object>();
    	condition1.put("roomId", roomId);
    	condition1.put("roomStatus", Constant.roomStatus_1);
        roomInfoDao.updateRoomInfo(condition1);
    }
	
	public void updateReservation(String orderNum, String roomId, String reserStatus) {
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("orderNum", orderNum);
        condition.put("roomId", roomId);
        condition.put("reserStatus", reserStatus);
        reservationDao.updateReservation(condition);
    }
	
}
