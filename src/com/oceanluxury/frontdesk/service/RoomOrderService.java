package com.oceanluxury.frontdesk.service;

import java.util.List;
import java.util.Map;

import com.oceanluxury.model.RoomOrder;

public interface RoomOrderService {

    /**
     * order search
	 */
    public List<RoomOrder> orderSearch(String roomType);

}
