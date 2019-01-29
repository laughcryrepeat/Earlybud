package com.earlybud.admin.dao;

import java.util.List;

import com.earlybud.model.Member;
import com.earlybud.model.Message;

public interface AdminDao {
	List<Member> listMember();
	void dropMember(String email);
	List<Message> listMessage(String email);
	List<Message> listSentMessage(String email);
}
