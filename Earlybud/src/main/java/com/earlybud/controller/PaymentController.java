package com.earlybud.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.earlybud.vo.AddrVo;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/payment/*")
@Log4j
public class PaymentController {
	
	@GetMapping("input")
	public void paymentInput() {
		log.info("payment input");
	}
	
	@RequestMapping("pwdCheck")
	public void pwdCheck(String pwd) {
		log.info("pwd check with Ajex");
		log.info("pwd : "+pwd);
	}
	
	@RequestMapping("jusoPopup")
	public String jusoPopup(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		log.info("jusoPopup");
		return "payment/jusoPopup";
	}
	@RequestMapping("reserve_payment")
	public void reservePayment() {
		log.info("reserve payment with Ajax");
	}
}
