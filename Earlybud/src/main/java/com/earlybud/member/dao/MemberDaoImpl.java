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
	public Member read(String email) {
		return sqlSession.selectOne(ns+".read", email);
	}
	@Override
	public int save(Member member) {
		int id = -1;
		try {
			id = sqlSession.insert(ns+".insertMember", member);
			sqlSession.insert(ns+".insertAuth", member.getEmail());
		} finally {
		}
		System.out.println("insert("+member+") : "+member.getEmail());
		return id; 
	}
	@Override
	public int update(Member member) {
		int id = -1;
		try {
			id = sqlSession.update(ns+".memberUpdate", member);
		} finally {
		}
		System.out.println("회원 update("+member+") : "+member.getEmail());
		return id;
	}
}
