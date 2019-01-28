package com.earlybud.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.model.Member;
import com.earlybud.model.Message;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class AdminDaoImpl implements AdminDao {
	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.model.Member";
	private String ns1= "com.earlybud.model.Message";
	
	@Override
	public List<Member> listMember() {
		log.info("memberdao");
		System.out.println("memberdao");
		List<Member> listM = sqlSession.selectList(ns+".listMember");
		System.out.println("member list size: "+listM.size());
		System.out.println("member auth: "+ listM.get(100));
		return listM;
	}

	@Override
	public void deleteMember(String email) {
		log.info("del member dao");
		System.out.println("del member dao");
		System.out.println("email: "+email);
		sqlSession.delete(ns+".deleteMember", email);
	}

	@Override
	public List<Message> listMessage(String email) {
		System.out.println("listMessage reciever: "+email);
		return sqlSession.selectList(ns1+".listMessage", email);
	}

	@Override
	public List<Message> listSentMessage(String email) {
		System.out.println("listSentMsg sender: "+email );	
		return sqlSession.selectList(ns1+".listSentMessage", email);
	}

}
