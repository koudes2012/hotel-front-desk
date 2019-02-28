package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.RoomInfo;

public class RoomInfoDaoImp extends SqlSessionDaoSupport {

	public List<RoomInfo> roomSearch(Map map) {
		return getSqlSession().selectList("roomSearch", map);
	}
	
}
