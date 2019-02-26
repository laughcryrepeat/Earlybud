package com.earlybud.project.dao;

import java.util.List;

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
	
	public List<Item> sellerItem(String email){
		System.out.println("dao");
		return sqlSession.selectList(ns+".sellerItem", email);
	}
	public Seller seller_select(String email) {
		return sqlSession.selectOne(ns1+".sel_select", email);
	}
	public Item item_select(long item_code) {
		System.out.println("아이템 select dao 들어왔어용"+item_code);

		return sqlSession.selectOne(ns+".modifyItem1", item_code);
	}
	public Item item_select2(long item_code) {
		System.out.println("아이템 select dao 들어왔어용"+item_code);

		return sqlSession.selectOne(ns+".modifyItem2", item_code);
	}
	public List<Type> selectType(long item_code) {
		return sqlSession.selectList(ns2+".selectType", item_code);
	}
	public int modifyItem(Item item) {
		int i=-1;
		try {
			i = sqlSession.update(ns+".modifyItem11", item);
		} finally {
		}
		return i;
	}
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
	public int save2(Type type) {
		int p = -1;
		System.out.println("dao 들어왔어용"+type.getItem_code());
		try {
			p = sqlSession.insert(ns2+".insertOption", type);
		} finally {
		}
		System.out.println("lastPage insert("+type+")");
		return p;
	}
	public int modifyType(Type type) {
		int p = -1;
		System.out.println("dao 들어왔어용"+type.getItem_code());
		try {
			p = sqlSession.update(ns2+".updateType", type);
		} finally {
		}
		System.out.println("lastPage insert("+type+")");
		return p;
	}
	
	public int modifySeller(Seller seller) {
		int i = -1;
		try {
			i = sqlSession.update(ns1+".updateSeller", seller);
		} finally {
		}
		return i;
	}
	public int update(Item item) {
		int p = -1;
		try {
			p = sqlSession.update(ns+".insertItem2", item);
		} finally {
		}
		System.out.println("3page insert("+item+")");
		return p;
	}
	public int update2(Seller seller) {
		int p=-1;
		try {
			System.out.println("셀러 dao 들어왔어용");
			p = sqlSession.insert(ns1+".insertItem3", seller);
		} finally {
		}
		System.out.println("1page insert("+seller+")");
		return p;
	}
	@Override
	public List<Item> sellerEndItem(String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+".sellerEndItem", email);
	}
	@Override
	public List<Item> sellerEncoreItem(String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+".sellerEncoreItem", email);
	}
}
