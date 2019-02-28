package com.oceanluxury.frontdesk.service;

import java.util.List;

import com.oceanluxury.model.RoomInfo;

public interface RoomInfoService {

    /**
     * room search
	 */
    public List<RoomInfo> roomSearch(String buildingId);

}
