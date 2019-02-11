package com.earlybud.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.earlybud.item.service.ItemService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
//@RequestMapping(value = "category")
//@RequestMapping("/category/*")	
@AllArgsConstructor
public class ItemController {
	
	private ItemService service;

	@GetMapping({"reward"})	//조회, 수정처리. @get/post는 url을 배열로 받을수 있어서 이렇게도 가능.
	 public String reward(@RequestParam("item_code") Long item_code, Model model) {	
		 //게시물 조회. bno값을 좀더 명시적으로 처리하기위해 @requestparam을 이용해 지정한다. 근데 파라미터이름과 변수이름을 기준으로 동작하니까 생략해도 무방하긴함.
		 //그리고 화면쪽으로 게시물번호를 전달해야되서 모델도 파라미터로 지정한다.
	System.out.println("아이템코드는 : "+item_code);
	 log.info("/reward");
	 model.addAttribute("item", service.get(item_code));	
	 System.out.println("리워드 상세페이지");
	 
	 return "category/item";
	 }	
	
}
