package com.earlybud.like.dao;

import java.util.List;

import com.earlybud.vo.MemberLikeVO;

public interface LikeDAO {
	public List<MemberLikeVO> getList();
	public List<MemberLikeVO> getSellerItemList(String email);

}
