package com.earlybud.payment.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.model.Payment_Info;
import com.earlybud.model.Purchase_Item;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class PaymentDaoImpl implements PaymentDao {

	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.model.Member";
	private String ns1 = "com.earlybud.model.Purchase_Item";
	private String ns2 = "com.earlybud.model.Payment_Info";
	
	@Override
	public String pwdCheck(String nickname) {
		log.info("pwd check DAO");
		return sqlSession.selectOne(ns+".pwdCheck", nickname);
	}


	@Override
	public void insertPurchaseItem(Purchase_Item purItem) {
		log.info("insertPurchaseItem DAO");
		
	}


	@Override
	public void insertPaymentInfo(Payment_Info payInfo) {
		log.info("insertPaymentInfo DAO");
		
	}

}
