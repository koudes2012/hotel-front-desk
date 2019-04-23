package com.oceanluxury.frontdesk.service.imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.util.StringUtils;

import com.oceanluxury.common.Constant;
import com.oceanluxury.frontdesk.dao.imp.ReservationDaoImpl;
import com.oceanluxury.frontdesk.dao.imp.RoomInfoDaoImp;
import com.oceanluxury.frontdesk.dao.imp.TaskDaoImp;
import com.oceanluxury.model.RoomInfo;
import com.oceanluxury.model.Task;
import com.oceanluxury.util.DateUtils;

public class RoomInfoServiceImp {
	
    private RoomInfoDaoImp roomInfoDao;
    private ReservationDaoImpl reservationDao;
    private TaskDaoImp taskDao;

    public TaskDaoImp getTaskDao() {
		return taskDao;
	}
	public void setTaskDao(TaskDaoImp taskDao) {
		this.taskDao = taskDao;
	}
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
    	
    	// Service
    	List<String> typeList1 = new ArrayList<String>();
    	typeList1.add(Constant.taskType_1);
    	typeList1.add(Constant.taskType_2);
    	typeList1.add(Constant.taskType_3);
    	typeList1.add(Constant.taskType_6);
    	Map<String, Object> condition1 = new HashMap<String, Object>();
        condition1.put("typeList", typeList1);
        List<Task> taskList1 = taskDao.searchRoomByTaskTypes(condition1);
        
    	// Maintenance
    	List<String> typeList2 = new ArrayList<String>();
    	typeList2.add(Constant.taskType_4);
    	typeList2.add(Constant.taskType_5);
    	Map<String, Object> condition2 = new HashMap<String, Object>();
        condition2.put("typeList", typeList2);
        List<Task> taskList2 = taskDao.searchRoomByTaskTypes(condition2);
        
    	for (int i=0; i<roomInfoList.size(); i++) {
    		RoomInfo roomInfo = roomInfoList.get(i);
    		String roomStatus = roomInfo.getRoomStatus();
    		
			if (!StringUtils.isEmpty(taskList1.get(i).getTaskType())) {
				roomStatus = Constant.STATUS_4;
			} else if (!StringUtils.isEmpty(taskList2.get(i).getTaskType())) {
				roomStatus = Constant.STATUS_5;
			}
    		
    		if (Constant.STATUS_1.equals(roomStatus)) {
    			roomInfo.setRoomStatus(Constant.COLOR_STATUS_1);
    		} else if (Constant.STATUS_2.equals(roomStatus)) {
    			roomInfo.setRoomStatus(Constant.COLOR_STATUS_2);
    		} else if (Constant.STATUS_3.equals(roomStatus)) {
    			roomInfo.setRoomStatus(Constant.COLOR_STATUS_3);
    		} else if (Constant.STATUS_4.equals(roomStatus)) {
    			roomInfo.setRoomStatus(Constant.COLOR_STATUS_4);
    		} else if (Constant.STATUS_5.equals(roomStatus)) {
    			roomInfo.setRoomStatus(Constant.COLOR_STATUS_5);
    		} else if (Constant.STATUS_6.equals(roomStatus)) {
    			roomInfo.setRoomStatus(Constant.COLOR_STATUS_6);
    		} else {
    			roomInfo.setRoomStatus(Constant.COLOR_STATUS_0);
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
    
	public List<RoomInfo> getRoomPullDownList() {
		return roomInfoDao.getRoomPullDownList();
	}
        
}
