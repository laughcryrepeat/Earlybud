package com.earlybud.message.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earlybud.vo.MessageListVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class MessageListDAOImpl implements MessageListDAO {
	@Autowired
	private SqlSession sqlSession;
	private String ns = "com.earlybud.vo.MessageListVO";
	

	@Override
	public List<MessageListVO> getIamSenderList() { //테스트용
		log.info("Message I sent ListDAO");
		System.out.println("One Member's Sent Message List");
		List<MessageListVO> IamSenderList = sqlSession.selectList(ns + "IamSender");
		return IamSenderList;
	}

	@Override
	public List<MessageListVO> getYouareSenderList() { //테스트용
		log.info("Message You Sent ListDAO");
		System.out.println("One Member's Received Message List");
		List<MessageListVO> YouareSenderList = sqlSession.selectList(ns + "YouareSender");
		return YouareSenderList;
	}
	
	
	@Override
	public List<MessageListVO> getIamSenderList(String email) {
		log.info("Message I sent ListDAO");
		System.out.println("One Member's Sent Message List");
		List<MessageListVO> IamSenderList = sqlSession.selectList(ns + "IamSender", email);
		return IamSenderList;
	}

	@Override
	public List<MessageListVO> getYouareSenderList(String email) {
		log.info("Message You Sent ListDAO");
		System.out.println("One Member's Received Message List");
		List<MessageListVO> YouareSenderList = sqlSession.selectList(ns + "YouareSender", email);
		return YouareSenderList;
	}
}
