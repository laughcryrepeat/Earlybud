package com.earlybud.admin.service;

import java.util.List;

import com.earlybud.model.Member;
import com.earlybud.model.Message;

public interface AdminService {
	List<Member> listMember();
	void deleteMember(String email);
	List<Message> listMessage(String email);
	List<Message> listSentMessage(String email);
}
