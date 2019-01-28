package com.earlybud.member.dao;

import com.earlybud.model.Member;

public interface MemberDAO {
	public Member read(String email);
}
