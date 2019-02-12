package com.oceanluxury.frontdesk.service.imp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oceanluxury.frontdesk.dao.imp.RoomOrderDaoImp;
import com.oceanluxury.frontdesk.service.RoomOrderService;
import com.oceanluxury.model.RoomOrder;

public class RoomOrderServiceImp implements RoomOrderService {

    private RoomOrderDaoImp roomOrderDao;

    public RoomOrderDaoImp getRoomOrderDao() {
        return roomOrderDao;
    }

    public void setRoomOrderDao(RoomOrderDaoImp roomOrderDao) {
        this.roomOrderDao = roomOrderDao;
    }

    public List<RoomOrder> orderSearch(String roomType) {
    	Map<String, Object> condition = new HashMap<String, Object>();
        condition.put("roomType", roomType);
    	List<RoomOrder> roomOrderList = roomOrderDao.orderSearch(condition);
    	return roomOrderList;
    }
}
