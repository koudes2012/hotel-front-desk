package com.oceanluxury.frontdesk.dao.imp;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.oceanluxury.model.Payment;

public class PaymentDaoImp extends SqlSessionDaoSupport {

	public void insertPayment(Payment payment) {
		getSqlSession().insert("insertPayment", payment);
	}
	
}
