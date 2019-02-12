package com.earlybud.like.service;

import java.util.List;

import com.earlybud.vo.MemberLikeVO;

public interface LikeService {
	public List<MemberLikeVO> getList();
	public List<MemberLikeVO> getOneSellerList(String email);
}
