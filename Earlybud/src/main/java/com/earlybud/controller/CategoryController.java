package com.earlybud.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.earlybud.category.service.CategoryService;
import com.earlybud.item.service.ItemService;
import com.earlybud.vo.CategoryVO;
import com.earlybud.vo.Criteria;
import com.earlybud.vo.PageVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
//@RequestMapping(value = "category")
//@RequestMapping("/category/*")	
@AllArgsConstructor
public class CategoryController {
	
	private ItemService service;
	private CategoryService service_Category;
/*
	@RequestMapping(value = "category")
	 public ModelAndView list(Model model) {	//리스트 가져오는 처리. 게시물 목록을 전달해야하므로 모델을 파라미터로 지정, 이를 통해 boardserviceimpl객체의 getList()결과를 담아 전달한다.(addAtrribute) 
		 
		PagingVo paging = new PagingVo();
		List<Item> productList = null;
		Map<String, Object> map2 = null;
		List<String> date2 = new ArrayList<String>();
		List<Map<String, Object>> my= new ArrayList<Map<String, Object>>();
		int count = service.countService();
		System.out.println("count: "+count);
		paging.setCountPage(12);
		paging.cal(1, count);
		String view = "index";
		productList = service.listService(paging);

	 List<CategoryVO> list_category = service_Category.getList();
	 
	 HashMap<String, Object> map = new HashMap<String, Object>();
	 List<Long> categoryList = new ArrayList<Long>();
		for(int i=0; i<list_category.size(); i++) {
			categoryList.add(list_category.get(i).getCAT_CODE());
		}
		map.put("categoryList", categoryList);
		map.put("first", paging.getFirst());
		map.put("last", paging.getLast());
		map.put("standard", "apply_qty/success_qty desc");//�α��
		map.put("end_code", "'ING'");
	 
	 ModelAndView mv = new ModelAndView("category/category");
	 mv.addObject("list_category", list_category);

	return mv;
	 }
	
	*/
	@RequestMapping(value = "category")
	 public String list(Model model) {	//리스트 가져오는 처리. 게시물 목록을 전달해야하므로 모델을 파라미터로 지정, 이를 통해 boardserviceimpl객체의 getList()결과를 담아 전달한다.(addAtrribute) 
		 
	 log.info("list");
	 model.addAttribute("list", service_Category.getList());
	// model.addAttribute("list_category", service_Category.getList());
	 System.out.println("categoryController : 카테고리 진입");
	 	 
	return "category/category";
	 }
		
}
