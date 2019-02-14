package com.earlybud.message.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.earlybud.message.dao.MessageListDAO;
import com.earlybud.vo.MessageListVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MessageListServiceImpl implements MessageListService {
	
	private MessageListDAO dao;
	
	@Override
	public List<MessageListVO> getIamSenderList() {
		log.info("get... I am Sender List...");
		return dao.getIamSenderList();
	}

	@Override
	public List<MessageListVO> getYouareSenderList() {
		log.info("get... You are Sender List...");
		return dao.getYouareSenderList();
	}

	@Override
	public List<MessageListVO> getIamSenderList(String email) {
		log.info("get... I am Sender List...");
		return dao.getIamSenderList(email);
	}

	@Override
	public List<MessageListVO> getYouareSenderList(String email) {
		log.info("get... You are Sender List...");
		return dao.getYouareSenderList(email);
	}

}
