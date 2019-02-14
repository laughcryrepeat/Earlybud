package com.earlybud.like.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.earlybud.like.dao.LikeDAO;
import com.earlybud.vo.MemberLikeVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class LikeServiceImpl implements LikeService {

	private LikeDAO dao;
	@Override
	public List<MemberLikeVO> getList() {
		log.info("get...List...");
		return dao.getList();
	}
	@Override
	public List<MemberLikeVO> getOneSellerList(String email) {
		log.info("get one seller's item list");
		return dao.getSellerItemList(email);
	}

}