package com.earlybud.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MypageController {
	
	
	@RequestMapping(value = "liked_things")
	   public String liked_things() {
	      return "mypage/liked_things";
	   }
	
	@RequestMapping(value = "seller_items")
	   public String seller_items() {
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
