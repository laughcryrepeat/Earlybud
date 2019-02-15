package com.earlybud.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.earlybud.message.service.MessageListService;
import com.earlybud.message.service.MessagePeopleListService;
import com.earlybud.vo.MessageListVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class MessageListController {
	private MessagePeopleListService service;
	private MessageListService serviceL;
	
	@RequestMapping(value = "message")
	public String list(Model model) {
		log.info("listM");
		model.addAttribute("listM", service.getList());
		System.out.println("컨트롤러에서 리스트 줌");
		return "message/message";
	}

	
//	@GetMapping(value = "/seller_items")
//	   public void seller_items(@RequestParam("email") String email, Model model) {
//		log.info("/seller_items");
//		model.addAttribute("OneList", service.getOneSellerList(email));
//		System.out.println("한 판매자의 아이템 목록을 컨트롤러가 넘겨줌");
//	   }
	

	@RequestMapping(value = "message/{email:.+}", method = RequestMethod.GET)
	   public String seller_items(@PathVariable("email") String email, Model model) {
		System.out.println("시작됨");
		log.info("/message");
		System.out.println("시작됨2");
		model.addAttribute("listMM", service.getList(email));
		System.out.println("시작됨3");
		return "message/message";
	   }	
	
	@PostMapping(value = "/new",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody MessageListVO vo){
		log.info("MessageListVO: "+ vo);
		int insertCount = serviceL.sendMessageX(vo);
		log.info("Message Sent Count: "+insertCount);
		return insertCount == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/message/{email:.+}/{receiver:.+}",
			produces = {
					MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<MessageListVO>> IamSender(
			@PathVariable("email") String email,
			@PathVariable("receiver") String receiver){
		log.info("getList..............");
		return new ResponseEntity<>(serviceL.getIamSenderList(email), HttpStatus.OK);
	}
	
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH },
			value = "/{message_code}",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> changeRead(
			@RequestBody MessageListVO vo,
			@PathVariable("message_code") String message_code){
				vo.setMESSAGE_CODE(message_code);
				
				return serviceL.changeReadX(message_code) == 1
						? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
			
}
