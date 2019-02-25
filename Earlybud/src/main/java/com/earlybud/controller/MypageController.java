package com.earlybud.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

import com.earlybud.like.service.LikeSellerService;
import com.earlybud.like.service.LikeService;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
@AllArgsConstructor
public class MypageController {
	
	private LikeService service;
	private LikeSellerService services;
//	@RequestMapping(value = "liked_things")
//	public String list(Model model) {
//		log.info("list");
//		model.addAttribute("list", service.getList());
//		model.addAttribute("listS", services.getListS());
//		System.out.println("컨트롤러에서 리스트 줌");
//
//		return "mypage/liked_things";
//	}
	
	@RequestMapping(value = "mypage/{email:.+}", method = RequestMethod.GET)
	public String list(@PathVariable("email") String email, Model model) {
		log.info("list");
		model.addAttribute("list", service.getList(email));
		model.addAttribute("listS", services.getListS(email));
		System.out.println("컨트롤러에서 리스트 줌");

		return "mypage/mypage";
	}

	
//	@GetMapping(value = "/seller_items")
//	   public void seller_items(@RequestParam("email") String email, Model model) {
//		log.info("/seller_items");
//		model.addAttribute("OneList", service.getOneSellerList(email));
//		System.out.println("한 판매자의 아이템 목록을 컨트롤러가 넘겨줌");
//	   }
	

	@RequestMapping(value = "seller_items/{email:.+}", method = RequestMethod.GET)
	   public String seller_items(@PathVariable("email") String email, Model model) {
		System.out.println("시작됨");
		log.info("/seller_items");
		System.out.println("시작됨2");
		model.addAttribute("OneList", service.getOneSellerList(email));
		System.out.println("시작됨3");
		System.out.println("한 판매자의 아이템 목록을 컨트롤러가 넘겨줌");
		return "mypage/seller_items";
	   }
	
	
	@RequestMapping(value = "member_orderlist")
	   public String member_orderlist() {
	      return "mypage/member_orderlist";
	   }
	
	@RequestMapping(value = "member_ordereach")
	   public String member_ordereach() {
	      return "mypage/member_ordereach";
	   }
}
