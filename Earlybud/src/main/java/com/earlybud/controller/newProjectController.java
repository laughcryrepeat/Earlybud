package com.earlybud.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.earlybud.model.Item;
import com.earlybud.project.service.NewProjectService;
import com.earlybud.security.CustomUserDetailsService;

@Controller
@RequestMapping("/newproject/*")
public class newProjectController {
	
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
	public String newProjectDetail1() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("1st page email: "+email);
		return "newProject/newprojectDetail1";
	}
	@RequestMapping("newprojectDetail2")
	public String newProjectDetail2(@RequestParam("cat_code") long cat_code, @RequestParam("opendate") String opendate, 
			@RequestParam("closingdate") String closingdate, @RequestParam("title") String title, 
			@RequestParam("main_image") MultipartFile main_image) throws ParseException, IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("2nd page email: "+email);
		String fileName=main_image.getOriginalFilename();
		long size = main_image.getSize();
		String contentType = main_image.getContentType();
		byte[] fileContents = main_image.getBytes();
		main_image.transferTo(new File("D:\\Download\\"+fileName));
		
		Date startDate = new  SimpleDateFormat("yyyy-MM-dd").parse(opendate);
        Date endDate = new  SimpleDateFormat("yyyy-MM-dd").parse(closingdate);
        java.sql.Date openDate = new java.sql.Date(startDate.getTime());
        java.sql.Date closingDate = new java.sql.Date(endDate.getTime());
        
		System.out.println("프로젝트 생성 p1: "+cat_code+", "+title+", "+openDate+", "+closingDate+","+fileName);
		
		Item item = new Item();
		item.setCat_code(cat_code);
		item.setTitle(title);
		item.setMain_image(fileName);
        item.setOpendate(openDate);
        item.setClosingdate(closingDate);
        System.out.println("프로젝트 생성 p1: "+item);
        projectS.save(item);

         return "newProject/newprojectDetail2";
	}
	@RequestMapping("newprojectDetail3")
	public String newProjectDetail3(@RequestParam("target_sum") String target_sum, @RequestParam("summary") String summary,
			@RequestParam("type_code") String type_code, @RequestParam String content) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("3rd page email: "+email);
		System.out.println("프로젝트 생성 p2: "+target_sum+", " +summary+", " +type_code+", " +content);
		return "newProject/newprojectDetail3";
	}
	@RequestMapping("newprojectCheck")
	public void newprojectCheck(@RequestParam("image") MultipartFile image, @RequestParam("seller_profile") String seller_profile,
			@RequestParam("seller_loc") String seller_loc, @RequestParam("seller_account") String seller_account) throws IOException{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("4th page email: "+email);
		String fileName=image.getOriginalFilename();
		long size = image.getSize();
		String contentType = image.getContentType();
		byte[] fileContents = image.getBytes();
		image.transferTo(new File("D:\\Download\\"+fileName));
		System.out.println("프로젝트 생성 p3: "+ image + ", " + seller_profile + ", " + seller_loc + ", " + seller_account);
	}
}
