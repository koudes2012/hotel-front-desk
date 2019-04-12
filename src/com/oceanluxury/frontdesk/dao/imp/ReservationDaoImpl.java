package com.oceanluxury.frontdesk.dao.imp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.Reservation;
import com.oceanluxury.model.RoomInfo;

public class ReservationDaoImpl extends SqlSessionDaoSupport {

	public List<Reservation> checkAvailability(Map map) {
		return getSqlSession().selectList("checkAvailability", map);
	}
	
	public List<Reservation> getAvailabileRoom(Map map) {
		return getSqlSession().selectList("getAvailabileRoom", map);
	}
	
	public void insertReservation(Reservation reservation) {
		getSqlSession().insert("insertReservation", reservation);
	}
	
	public void deleteReservation(Map map) {
		getSqlSession().delete("deleteReservation", map);
	}
	
	public List<Reservation> getReservation(Map map) {
		return getSqlSession().selectList("getReservation", map);
	}
	
	public List<Reservation> orderSearch(Map map) {
		return getSqlSession().selectList("orderSearch", map);
	}
	
	public void updateReservation(Map map) {
		getSqlSession().update("updateReservation", map);
	}
	
}