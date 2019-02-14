package com.earlybud.payment.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class PaymentDaoImpl implements PaymentDao {

	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.model.Member";
	
	
	@Override
	public String pwdCheck(String nickname) {
		log.info("pwd check DAO");
		return sqlSession.selectOne(ns+".pwdCheck", nickname);
	}

}
