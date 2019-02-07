package com.earlybud.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earlybud.admin.dao.AdminDao;
import com.earlybud.model.Email;
import com.earlybud.model.Member;
import com.earlybud.model.Message;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {
	
	@Setter(onMethod_ = { @Autowired })
	private AdminDao dao;
	
	@Override
	public List<Member> listMember() {
		log.info("listmember service");
		return dao.listMember();
	}

	@Override
	public void dropMember(String email) {
		log.info("del member service");
		dao.dropMember(email);
	}

	@Override
	public List<Message> listMessage(String email) {
		return dao.listMessage(email);
	}

	@Override
	public List<Message> listSentMessage(String email) {
		return dao.listSentMessage(email);
	}

	@Override
	public int sendMessage(Email email) {
		String mailto = email.getMailto();
		String sender = email.getMailfrom();
		String mailsubject = email.getMailsubject();
		String content = mailsubject+ "/" + email.getMailcontent();
		String recievers[] = null;
		int x = 0;
		if(mailto.contains(",")) {
			recievers = mailto.split("\\s*,\\s*");
			for(int i=0; i<recievers.length; i++) {
				Message msg = new Message(-1,-1,recievers[i],sender,content,null,-1);
				dao.sendMessage(msg);
				x++;
			}
		}else {
			Message msg = new Message(-1,-1, mailto,sender,content,null,-1);
			dao.sendMessage(msg);
			x++;
		}	
		return x;
	}

	@Override
	public int updateRead(int message_code) {
		System.out.println("updateRead service, message_code: "+message_code);
		return dao.updateRead(message_code);
	}

}
