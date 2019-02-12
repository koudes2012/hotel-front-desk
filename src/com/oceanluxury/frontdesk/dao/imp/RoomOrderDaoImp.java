package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.RoomOrder;

public class RoomOrderDaoImp extends SqlSessionDaoSupport {

	public List<RoomOrder> orderSearch(Map map) {
		return getSqlSession().selectList("orderSearch", map);
	}
	
}
