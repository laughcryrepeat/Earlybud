package com.earlybud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	public String mypage(){
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
		Member m = new Member();
		m.setNickname("일반사용자");
		m.setEmail(member.getEmail());
		m.setPwd(pwd);
		m.setAddr(addr);
		m.setDetail_addr(detail_addr);
		m.setPhone(phone);
		service.update(m);
		log.info("회원정보가 수정되었습니다. 회원명: "+m);
		return m;
	}
}
