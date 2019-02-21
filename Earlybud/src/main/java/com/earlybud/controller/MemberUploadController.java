package com.earlybud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.earlybud.model.Member;
import com.earlybud.security.CustomUserDetailsService;
import com.earlybud.vo.AddrVo;

import lombok.extern.log4j.Log4j;
@Controller
@Log4j
public class MemberUploadController {
	@Autowired
	CustomUserDetailsService service;
	@RequestMapping("mypage")
	public String mypage(Model model){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		System.out.println("컨트롤러 접속자: "+service.userDetail(email));
		model.addAttribute("user", service.userDetail(email));
		return "/mypage/myPageDetail";
	}
	@RequestMapping(value="juso")
	public String juso(@ModelAttribute("AddrVo") AddrVo addrvo) {
		return "payment/jusoPopup";
	}
	@RequestMapping("/memberUpload")
	public Member memberUpload(@ModelAttribute("Member") Member member, @RequestParam("email") String email,
			@RequestParam("pwd") String pwd, @RequestParam("addr") String addr, @RequestParam("detail_addr") String detail_addr,
			@RequestParam("phone") String phone,String error, Model model)
		throws Exception{
		member.setEmail(member.getEmail());
		member.setPwd(pwd);
		member.setAddr(addr);
		member.setDetail_addr(detail_addr);
		member.setPhone(phone);
		service.update(member);
		log.info("회원정보가 수정되었습니다. 회원명: "+member);
		return member;
	}
}
