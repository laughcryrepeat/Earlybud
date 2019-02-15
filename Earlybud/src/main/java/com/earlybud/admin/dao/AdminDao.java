package com.earlybud.admin.dao;

import java.util.List;

import com.earlybud.model.Item;
import com.earlybud.model.Member;
import com.earlybud.model.Message;

public interface AdminDao {
	List<Item> listItem();
	int updateApproveItem(int item_code);
	int updateRejectItem(int item_code);
	List<Member> listMember();
	void dropMember(String email);
	List<Message> listMessage(String email);
	List<Message> listSentMessage(String email);
	void sendMessage(Message msg);
	int updateRead(int message_code);
}
