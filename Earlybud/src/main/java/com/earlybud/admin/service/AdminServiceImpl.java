package com.earlybud.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earlybud.admin.dao.AdminDao;
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

}
