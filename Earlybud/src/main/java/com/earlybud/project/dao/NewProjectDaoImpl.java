package com.earlybud.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;
import com.earlybud.model.Type;

import lombok.extern.log4j.Log4j;

@Repository
@Log4j
public class NewProjectDaoImpl implements NewProjectDao {
	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.model.Item";
	private String ns1 = "com.earlybud.model.Seller";
	private String ns2 = "com.earlybud.model.Type";
	public int save(Item item) {
		int p = -1;
		System.out.println("dao 들어왔어용"+item.getEmail());
		try {
			p = sqlSession.insert(ns+".insertItem", item);
		} finally {
		}
		System.out.println("2page insert("+item+")");
		return p;
	}
	public int update(Item item, Type type) {
		int p = -1;
		try {
			p = sqlSession.update(ns+".insertItem2", item);
			p = sqlSession.insert(ns+".insertOption", type);
		} finally {
		}
		System.out.println("3page insert("+item+", "+type+")");
		return p;
	}
	public int update2(Seller seller) {
		int p=-1;
		try {
			p = sqlSession.insert(ns1+".insertItem3", seller);
		} finally {
		}
		System.out.println("1page insert("+seller+")");
		return p;
	}
}
