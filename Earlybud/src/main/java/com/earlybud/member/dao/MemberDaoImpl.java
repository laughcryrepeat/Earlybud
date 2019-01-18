package com.earlybud.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.model.Member;

@Repository
public class MemberDaoImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.model.Member";
	
	@Override
	public Member read(String userid) {
		return sqlSession.selectOne(ns+".read", userid);
	}

}
