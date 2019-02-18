package com.earlybud.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class newProjectController {
	DateFormat date_format = new SimpleDateFormat("yyyy-MM-dd");
	@RequestMapping("newproject")
	public String newProject() {
		return "newProject/newproject";
	}
	@RequestMapping("newprojectDetail1")
	public String newProjectDetail1() {
		return "newProject/newprojectDetail1";
	}
	@RequestMapping("newprojectDetail2")
	public String newProjectDetail2(@RequestParam("custValueCode") String value, @RequestParam("startDate") String startDate, 
			@RequestParam("endDate") String endDate, @RequestParam("title") String title, 
			@RequestParam("main_image") MultipartFile main_image) throws IOException{
		String fileName=main_image.getOriginalFilename();
		long size = main_image.getSize();
		String contentType = main_image.getContentType();
		byte[] fileContents = main_image.getBytes();
		main_image.transferTo(new File("D:\\Download\\"+fileName));
		System.out.println("프로젝트 생성p1: "+value+", "+title+", "+startDate+", "+endDate+","+fileName);
		return "newProject/newprojectDetail2";
	}
	@RequestMapping("newprojectDetail3")
	public String newProjectDetail3() {
		return "newProject/newprojectDetail3";
	}
}
