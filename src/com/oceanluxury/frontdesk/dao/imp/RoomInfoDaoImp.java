package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.RoomInfo;

public class RoomInfoDaoImp extends SqlSessionDaoSupport {

	public List<RoomInfo> roomSearch(Map map) {
		return getSqlSession().selectList("roomSearch", map);
	}
	
	public void updateRoomInfo(Map map) {
		getSqlSession().update("updateRoomInfo", map);
	}
	
	public List<RoomInfo> checkInOutSearch(Map map) {
		return getSqlSession().selectList("checkInOutSearch", map);
	}
	
	public List<RoomInfo> getRoomPullDownList() {
		return getSqlSession().selectList("getRoomPullDownList");
	}
	
}
