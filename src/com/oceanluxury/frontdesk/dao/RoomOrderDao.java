package com.oceanluxury.frontdesk.dao;

import java.util.List;

import com.oceanluxury.model.RoomOrder;

public interface RoomOrderDao {

    /**
     * order search
	 */
    public List<RoomOrder> orderSearch(String roomType);

}
