package com.earlybud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.earlybud.vo.AddrVo;
import com.earlybud.vo.PaymentVo;

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
	public String jusoPopup(@ModelAttribute("AddrVo") AddrVo addrvo) {
		log.info("jusoPopup");
		return "payment/jusoPopup";
	}
	
	@RequestMapping(value="reserve_payment", method=RequestMethod.POST)
	public void reservePayment(PaymentVo paymentVo) {
		log.info("reserve payment with Ajax");
		log.info("paymentVo: "+paymentVo.getNickname());
	}
}
