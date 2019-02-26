package com.earlybud.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.earlybud.model.Item;
import com.earlybud.model.Seller;
import com.earlybud.model.Type;
import com.earlybud.project.service.NewProjectService;
import com.earlybud.security.CustomUserDetailsService;

@Controller
@RequestMapping("/newproject/*")
public class NewProjectController {
	
	@Autowired
	CustomUserDetailsService service;
	@Autowired
	NewProjectService projectS;
	
	DateFormat date_format = new SimpleDateFormat("yyyy-MM-dd");
	@RequestMapping("newproject")
	public String newProject(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("새로운 프로젝트 접속자: "+service.userDetail(email));
		model.addAttribute("user", service.userDetail(email));
		return "newProject/newproject";
	}
	@RequestMapping("newprojectDetail1")
	public String newProjectDetail1(Seller seller) throws IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		if(projectS.seller_select(email) != null) {
			System.out.println("갑니다 숑숑: "+ projectS.seller_select(email));
			return "newProject/newprojectDetail2";
			}
		System.out.println("1st page email: "+email);
		return "newProject/newprojectDetail1";
	}
	@RequestMapping("newprojectDetail2")
	public String newprojectDetail2(@RequestParam("image") MultipartFile image, @RequestParam("info") String info,
			@RequestParam("seller_loc") String seller_loc, @RequestParam("seller_account") String seller_account) throws IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("1st page email: "+email);
		Seller seller = new Seller();
		String fileName=image.getOriginalFilename()+System.currentTimeMillis();
		long size = image.getSize();
		String contentType = image.getContentType();
		byte[] fileContents = image.getBytes();
		image.transferTo(new File("C:\\Users\\student\\git\\Earlybud\\Earlybud\\src\\main\\webapp\\resources\\uploads\\member\\profile\\"+fileName));
		seller.setImage(fileName);
		System.out.println("프로젝트 생성 p1: " + info + ", " + seller_loc + ", " + seller_account);
		
		seller.setEmail(email);
		seller.setInfo(info);
		seller.setSeller_loc(seller_loc);
		seller.setSeller_account(seller_account);
		projectS.update2(seller);
		
		return "newProject/newprojectDetail2";
	}
	@RequestMapping("newprojectDetail3")
	public String newProjectDetail3(@RequestParam("cat_code") long cat_code, @RequestParam("opendate") String opendate, 
			@RequestParam("closingdate") String closingdate, @RequestParam("title") String title, 
			@RequestParam("main_image") MultipartFile main_image) throws ParseException, IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("3rd page email: "+email);
		String fileName=main_image.getOriginalFilename();
		long size = main_image.getSize();
		String contentType = main_image.getContentType();
		byte[] fileContents = main_image.getBytes();
		main_image.transferTo(new File("C:\\Users\\student\\git\\Earlybud\\Earlybud\\src\\main\\webapp\\resources\\uploads\\reward\\"+fileName));	//자기 컴터 경로에 맞게 고쳐야됨
		
		Date startDate = new  SimpleDateFormat("yyyy-MM-dd").parse(opendate);
		Date endDate = new  SimpleDateFormat("yyyy-MM-dd").parse(closingdate);
		java.sql.Date openDate = new java.sql.Date(startDate.getTime());
		java.sql.Date closingDate = new java.sql.Date(endDate.getTime() + TimeUnit.DAYS.toMillis( 1 ));
		
		Item item = new Item();
		item.setEmail(email);
		item.setCat_code(cat_code);
		item.setTitle(title);
		item.setMain_image(fileName);
		item.setOpendate(openDate);
		item.setClosingdate(closingDate);
		System.out.println("프로젝트 생성 p2: "+item);
		projectS.save(item);
		
		return "newProject/newprojectDetail3";
	}
	@RequestMapping("newprojectCheck")
	public void newProjectCheck(@RequestParam("target_sum") long target_sum, @RequestParam String summary,
			@RequestParam String option_type, @RequestParam String content){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		String typeprice = option_type.substring(option_type.indexOf("가격: ")+4, option_type.indexOf(" 옵션이름: "));
		long price = Long.parseLong(typeprice);
		String name = option_type.substring(option_type.indexOf(" 옵션이름: ")+7, option_type.lastIndexOf(" 옵션설명: "));
		String info = option_type.substring(option_type.indexOf(" 옵션설명: ")+7);
		System.out.println("프로젝트 생성 p3: "+target_sum+", " +summary+","+price+","+name + ","+info);
		Item item = new Item();
		item.setEmail(email);
		item.setTarget_sum(target_sum);
		item.setSummary(summary);
		item.setContent(content);
		projectS.update(item);
		System.out.println("아이템코드? " + item.getItem_code());
		long item_code = (long) item.getItem_code();
		Type type = new Type();
		type.setItem_code(item_code);
		type.setPrice(price);
		type.setName(name);
		type.setInfo(info);
		projectS.save2(type);
		System.out.println("저장완료");
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////// 프로젝트 수정
	Model model;
	@RequestMapping("newprojectModify1")
	public String newProjectModify1() throws IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		model.addAttribute("seller", projectS.seller_select(email));
		System.out.println(projectS.seller_select(email));
		return "newProject/newprojectM1";
	}
	@RequestMapping(value="newprojectModify2/{item_code}")
	public String newprojectModify2(@PathVariable long item_code, Model model) throws IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("1st page email: "+email);
		model.addAttribute("seller", projectS.item_select(item_code));
		return "newProject/newprojectM2";
	}
	@RequestMapping("newprojectModify3/{item_code}")
	public String newProjectModify3(Model model) throws ParseException, IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("3rd page email: "+email);
		
		return "newProject/newprojectDetail3";
	}
	@RequestMapping("newprojectModifyCheck")
	public void newProjectModifyCheck(@RequestParam long target_sum, @RequestParam String summary,
			@RequestParam String option_type, @RequestParam String content){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		String typeprice = option_type.substring(option_type.indexOf("가격: ")+4, option_type.indexOf(" 옵션이름: "));
		long price = Long.parseLong(typeprice);
		String name = option_type.substring(option_type.indexOf(" 옵션이름: ")+7, option_type.lastIndexOf(" 옵션설명: "));
		String info = option_type.substring(option_type.indexOf(" 옵션설명: ")+7);
		System.out.println("프로젝트 생성 p3: "+target_sum+", " +summary+","+price+","+name + ","+info);
		Item item = new Item();
		item.setEmail(email);
		item.setTarget_sum(target_sum);
		item.setSummary(summary);
		item.setContent(content);
		projectS.update(item);
		System.out.println("아이템코드? " + item.getItem_code());
		long item_code = (long) item.getItem_code();
		Type type = new Type();
		type.setItem_code(item_code);
		type.setPrice(price);
		type.setName(name);
		type.setInfo(info);
		projectS.save2(type);
		System.out.println("저장완료");
	}
}
