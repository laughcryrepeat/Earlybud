package com.earlybud.controller;

import java.util.List;
import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earlybud.admin.service.AdminService;
import com.earlybud.model.Item;
import com.earlybud.model.Member;
import com.earlybud.model.Message;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@Log4j
@RequestMapping("/admin/*")
@Controller
public class AdminController {
	
	@Setter(onMethod_ = { @Autowired })
	private AdminService service;
	
	@GetMapping("admin_home")
	public void doAdmin() {
		log.info("admin only");
	}
	
	@GetMapping("item_data")
	public void listItem(Model model) {
		log.info("admin item list");
		List<Item> listItem  = service.listItem();
		model.addAttribute("listItem", listItem);
		
		Date now = new Date(System.currentTimeMillis());
		System.out.println("now: "+now);
		model.addAttribute("now",now);
	}
	
	@PostMapping("approveItem")
	public @ResponseBody String updateApproveItem(int item_code) {
		log.info("update approveItem");
		System.out.println("approve call item_code: "+item_code);
		int i =service.updateApproveItem(item_code);
		System.out.println("update row: "+i);
		if(i>0) {
			System.out.println("update");
			return "update";
		}
		return null;
	}
	
	@PostMapping("rejectItem")
	public void updateRejectItem(int item_code) {
		log.info("update approveItem");
		System.out.println("reject call item_code: "+item_code);
		int i = service.updateRejectItem(item_code);
	}
	
	@GetMapping("encore_data")
	public void listEncore(Model model) {
		log.info("admin encore list");
		List<Item> listItem = service.listItem();
		model.addAttribute("listItem",listItem);	
	}
	
	@GetMapping("member_data")
	public void listMember(Model model) {
		log.info("admin member table");
		List<Member> listM = service.listMember();	
		 model.addAttribute("listM",listM);
	}
	
	@GetMapping("delete_member/{email:.+}")
	public String deleteMember(@PathVariable("email") String email ) {
		log.info("admin delete member");
		System.out.println("email: "+email);
		service.dropMember(email);
		return "redirect:/admin/member_data";
	}
	
	@GetMapping("page_mailbox")
	public String listMessage( @RequestParam("email") String email, Model model) {
		log.info("admin message");
		List<Message> listMsg = service.listMessage(email);	
		model.addAttribute("listMsg",listMsg);
		return "admin/page_mailbox";
	}
	
	@GetMapping("sent_mailbox")
	public String listSentMessage( @RequestParam("email") String email, Model model) {
		log.info("admin sent message");
		List<Message> listSentMsg = service.listSentMessage(email);
		model.addAttribute("listSentMsg", listSentMsg);
		return "admin/sent_mailbox";
	}
	
}
