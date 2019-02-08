package com.earlybud.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earlybud.payment.service.PaymentService;
import com.earlybud.security.CustomNoOpPasswordEncoder;
import com.earlybud.vo.AddrVo;
import com.earlybud.vo.PaymentVo;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.request.ScheduleData;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/payment/*")
@Log4j
public class PaymentController {
	
	@Setter(onMethod_ = { @Autowired } )
	private PaymentService service;
	
	@GetMapping("input")
	public void paymentInput() {
		log.info("payment input");
	}
	
	@RequestMapping("pwdCheck")
	public @ResponseBody Boolean pwdCheck(String pwd, String nickname, HttpServletResponse response) {
		log.info("pwd check with Ajex");
		log.info("pwd : "+pwd);
		log.info("nickname: "+nickname);
		String pwdMatch = service.pwdCheckService(nickname);
		log.info("pwdMatch: "+pwdMatch);
		CustomNoOpPasswordEncoder cpe = new CustomNoOpPasswordEncoder();
		System.out.println("cpe.encode(pwd) :"+cpe.encode(pwd));
		if(cpe.encode(pwd).equals(pwdMatch)) {
			System.out.println("true");
			return true;
		}else {
			System.out.println("false");
			return null;
		}
	}
	
	@RequestMapping("jusoPopup")
	public String jusoPopup(@ModelAttribute("AddrVo") AddrVo addrvo) {
		log.info("jusoPopup");
		return "payment/jusoPopup";
	}
	
	@RequestMapping(value="reserve_payment", method=RequestMethod.POST)
	public void reservePayment(PaymentVo paymentVo) {
		String customer_uid = null;
		log.info("reserve payment with Ajax");
		log.info("paymentVo: "+paymentVo.getNickname());
		IamportClient client = new IamportClient("6720365022563293","fR14uM6bvndQ4MUl2u0pJWLjkPH4tUHJMINhvTs0hGRmtLHvgHUZDGiYv02ZVKJItwZYqrYI8P4BBL6R");
		ScheduleData schedule_data = new ScheduleData(customer_uid);
		client.subscribeSchedule(schedule_data);
	}
}
