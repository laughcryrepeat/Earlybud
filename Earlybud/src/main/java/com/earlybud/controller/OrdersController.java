package com.earlybud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.earlybud.orders.service.AllOrdersService;
import com.earlybud.orders.service.EachOrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class OrdersController {
	private AllOrdersService service;
	private EachOrderService serviceO;
	
	@RequestMapping(value = "member_orderlist/{email:.+}")
	public String AllOrders(@PathVariable("email") String email, Model model) {
		log.info("회원별 주문내역 전체 조회");
		model.addAttribute("list", service.getAllOrdersList(email));
		return "mypage/member_orderlist";
	}
	
	@RequestMapping(value = "member_ordereach/{merchant_uid}")
	public String OneOrder(@PathVariable("merchant_uid") String merchant_uid, Model model) {
		log.info("주문 하나 조회");
		model.addAttribute("listO", serviceO.getOneOrderList(merchant_uid));
		return "mypage/member_ordereach";
	}
	
	@RequestMapping(value = "member_ordereach/{merchant_uid}/cancel")
	public String CancelOrder(@PathVariable("merchant_uid") String merchant_uid, Model model) {
		serviceO.cancelOrder(merchant_uid);
		model.addAttribute("listO", serviceO.getOneOrderList(merchant_uid));
		String redirectU = "redirect:/../earlybud/member_ordereach/"+merchant_uid;
		return redirectU;
	}

}
