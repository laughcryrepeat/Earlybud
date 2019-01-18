package com.earlybud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;


@Log4j
@RequestMapping("/admin/*")
@Controller
public class AdminController {
	
	@GetMapping("admin_home")
	public void doAdmin() {
		log.info("admin only");
	}
	
	@GetMapping("item_data")
	public void itemCheck() {
		log.info("admin item list");
	}
	
	@GetMapping("encore_data")
	public void encoreCheck() {
		log.info("admin encore list");
	}
	
	@GetMapping("member_data")
	public void memberCheck() {
		log.info("admin member table");
	}
	
	@GetMapping("page_mailbox")
	public void messageCheck() {
		log.info("admin message");
	}
}
