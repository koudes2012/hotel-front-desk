package com.oceanluxury.frontdesk.service.imp;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oceanluxury.common.Constant;
import com.oceanluxury.frontdesk.dao.imp.ReservationDaoImpl;
import com.oceanluxury.frontdesk.dao.imp.RoomInfoDaoImp;
import com.oceanluxury.model.Reservation;
import com.oceanluxury.model.RoomInfo;
import com.oceanluxury.util.DateUtils;

public class RoomInfoServiceImp {
	
	private static String STATUS_0 = "0";
	private static String STATUS_1 = "1";
	private static String STATUS_2 = "2";
	private static String STATUS_3 = "3";
	private static String STATUS_4 = "4";
	private static String STATUS_5 = "5";
	private static String STATUS_6 = "6";
	
	private static String COLOR_STATUS_0 = "#917430";
	private static String COLOR_STATUS_1 = "#b51d1a";
	private static String COLOR_STATUS_2 = "#000EFF";
	private static String COLOR_STATUS_3 = "#a5c438";
	private static String COLOR_STATUS_4 = "#7065D5";
	private static String COLOR_STATUS_5 = "#23b628";
	private static String COLOR_STATUS_6 = "#7b8587";

    private RoomInfoDaoImp roomInfoDao;
    private ReservationDaoImpl reservationDao;

    public ReservationDaoImpl getReservationDao() {
		return reservationDao;
	}
	public void setReservationDao(ReservationDaoImpl reservationDao) {
		this.reservationDao = reservationDao;
	}
	public RoomInfoDaoImp getRoomInfoDao() {
        return roomInfoDao;
    }
    public void setRoomInfoDao(RoomInfoDaoImp roomInfoDao) {
        this.roomInfoDao = roomInfoDao;
    }

    public List<RoomInfo> roomSearch(String buildingId) {
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("buildingId", buildingId);
    	List<RoomInfo> roomInfoList = roomInfoDao.roomSearch(condition);
    	
    	for (int i=0; i<roomInfoList.size(); i++) {
    		RoomInfo roomInfo = roomInfoList.get(i);
    		String roomStatus = roomInfo.getRoomStatus();
    		if (STATUS_1.equals(roomStatus)) {
    			roomInfo.setRoomStatus(COLOR_STATUS_1);
    		} else if (STATUS_2.equals(roomStatus)) {
    			roomInfo.setRoomStatus(COLOR_STATUS_2);
    		} else if (STATUS_3.equals(roomStatus)) {
    			roomInfo.setRoomStatus(COLOR_STATUS_3);
    		} else if (STATUS_4.equals(roomStatus)) {
    			roomInfo.setRoomStatus(COLOR_STATUS_4);
    		} else if (STATUS_5.equals(roomStatus)) {
    			roomInfo.setRoomStatus(COLOR_STATUS_5);
    		} else if (STATUS_6.equals(roomStatus)) {
    			roomInfo.setRoomStatus(COLOR_STATUS_6);
    		} else {
    			roomInfo.setRoomStatus(COLOR_STATUS_0);
    		}
    	}
    	return roomInfoList;
    }
    
    public List<RoomInfo> checkInOutSearch(String roomType) {
    	Map<String, Object> condition = new HashMap<String, Object>();
    	condition.put("roomType", roomType);
    	condition.put("reserStatus", Constant.reserStatus_2);
        condition.put("systemDate", DateUtils.transferdate(new Date(), "dd-MM-yyyy"));
    	List<RoomInfo> roomInfoList = roomInfoDao.checkInOutSearch(condition);
    	
    	return roomInfoList;
    }
    
    public void checkInOut(String roomId, String roomStatus) {
		Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("roomId", roomId);
        condition.put("roomStatus", roomStatus);
        roomInfoDao.updateRoomInfo(condition);
    }
        
}
