package com.earlybud.controller;

import java.util.List;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.Message;

import com.earlybud.admin.service.AdminService;
import com.earlybud.model.Email;
import com.earlybud.model.Member;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
public class MailController {
	
	@Setter(onMethod_ = { @Autowired })
	private AdminService service;
	
	@PostMapping(value = "send_mail", consumes = "application/json")
	public ResponseEntity<String> sendMail(@RequestBody Email email) {
		System.out.println("mailcontroller");
		System.out.println("mail:"+ email);
		
		String host = "smtp.naver.com";
		String user = "laughcryrepeat@naver.com";
		String password = "bitcamp2019";
		String emailto = email.getMailto();
		emailto = emailto.trim();
		System.out.println("emailto: "+ emailto);
		String[] mailtoArray = null;
		
		if(emailto.contains(",")) {
			mailtoArray = emailto.split("\\s*,\\s*");
		}
	
		//SMTP 서버정보 설정
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			if(mailtoArray == null) {
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(emailto));
			}else {
				InternetAddress[] addArray = new InternetAddress[mailtoArray.length];
				for(int i=0; i<mailtoArray.length; i++) {
					addArray[i] = new InternetAddress(mailtoArray[i]);
				}
				message.addRecipients(Message.RecipientType.TO, addArray);
			}
			
			//메일 제목
			message.setSubject(email.getMailsubject());
			//메일 내용
			message.setText(email.getMailcontent());
			//send 
			Transport.send(message);
			System.out.println("Message sent Successfully");
			
		}catch(MessagingException e) {
			e.printStackTrace();
		}
		
		int insertCount = 1;
		insertCount = service.sendMessage(email);
		return insertCount >= 1
				? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);		
	}
	
	@PostMapping(value="update_read")
	public ResponseEntity<String> updateRead(@RequestParam("msg_code") int msg_code) {
		System.out.println("updateRead ajax");
		System.out.println("msg_code: "+msg_code);
		int updateCount = 1;
		updateCount = service.updateRead(msg_code);
		return updateCount == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
