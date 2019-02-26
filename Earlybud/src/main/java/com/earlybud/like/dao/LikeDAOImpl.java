package com.earlybud.like.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.vo.MemberLikeVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class LikeDAOImpl implements LikeDAO {
	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.vo.MemberLikeVO";
	
	@Override
	public List<MemberLikeVO> getList() {
		log.info("MemberLikeDAO");
		System.out.println("MemberLikedao");
		List<MemberLikeVO> listL = sqlSession.selectList(ns + ".readItemLiked");
		System.out.println("Item list size: "+listL.size());

		return listL;
	}
	
	@Override
	public List<MemberLikeVO> getList(String email) {
		log.info("MemberLikeDAO");
		System.out.println("MemberLikedao");
		List<MemberLikeVO> listL = sqlSession.selectList(ns + ".readItemLikedX", email);
		System.out.println("Item list size: "+listL.size());

		return listL;
	}

	@Override
	public List<MemberLikeVO> getSellerItemList(String email) {
		log.info("One each seller's Item List");
		System.out.println("One seller's Item List");
		List<MemberLikeVO> oneSellerList = sqlSession.selectList(ns + ".readOneSellerItem", email);
		return oneSellerList;

	}



}
