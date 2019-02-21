package com.earlybud.admin.service;

import java.util.List;

import com.earlybud.model.Email;
import com.earlybud.model.Item;
import com.earlybud.model.Member;
import com.earlybud.model.Message;

public interface AdminService {
	List<Item> listItem();
	int updateApproveItem(int item_code);
	int updateRejectItem(int item_code);
	List<Member> listMember();
	void dropMember(String email);
	List<Message> listMessage(String email);
	List<Message> listSentMessage(String email);
	int sendMessage(Email email);
	int updateRead(int message_code);
	int sendPassword(String email);
}
