package com.earlybud.member.dao;

import java.util.List;

import com.earlybud.model.Member;

public interface MemberDAO {
	public int save(Member member);
	public Member read(String email);
 	public int update(Member member);
}

