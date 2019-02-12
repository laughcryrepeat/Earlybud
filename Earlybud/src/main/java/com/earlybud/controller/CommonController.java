package com.earlybud.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.earlybud.login.kakao.KakaoAccessToken;
import com.earlybud.login.kakao.KakaoUserInfo;
import com.earlybud.member.dao.MemberDAO;
import com.earlybud.model.Member;
import com.earlybud.security.CustomUserDetailsService;
import com.fasterxml.jackson.databind.JsonNode;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	MemberDAO dao;
	@Autowired
	CustomUserDetailsService service;
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {

		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
	}

	@RequestMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("LOGIN error: " + error);
		log.info("logout: " + logout);

		if (error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}
	@RequestMapping(value="/oauth", produces="application/json; charset=utf-8", method= {RequestMethod.GET, RequestMethod.POST})
	public Member kakaoLogin(@RequestParam("code") String code, RedirectAttributes ra, HttpSession session, HttpServletResponse response) throws IOException{
		JsonNode jsonToken = KakaoAccessToken.getKakaoAccessToken(code);
		JsonNode accessToken = jsonToken.get("access_token");
		JsonNode userInfo = KakaoUserInfo.getKakaoUserInfo(accessToken);
		String id = userInfo.path("id").asText();
		String name = null;
		String email = null;
		
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		name = properties.path("nickname").asText();
		email = kakao_account.path("email").asText();
		
		System.out.println("[email] : "+email+", [name] : "+name+", [id] : "+id);
		
		Member member = new Member();
		member.setEmail(email);
		member.setNickname(name);
		member.setPwd(id);
		System.out.println("[JOIN] NEW MEMBER :  " + member);
		service.save(member);
		
		return member;
	}
	@RequestMapping("/join")
	public Member join_input(@RequestParam("email") String email, @RequestParam("pwd") String pwd, @RequestParam("nickname") String nickname, String error, Model model)
		throws Exception{
		Member member = new Member();
		member.setEmail(email);
		member.setNickname(nickname);
		member.setPwd(pwd);
		System.out.println("[JOIN] NEW MEMBER :  " + member);
		service.save(member);
		log.info("JOIN error: " + error);
		return member;
	}
	
	/*@RequestMapping("/email_check")
	public void emailCheck(HttpServletRequest request, HttpServletResponse response, String error, Model model, Member member) 
		throws Exception{
		String emailSearch = request.getParameter("email");
		System.out.println("emailSearch: "+emailSearch);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
	}*/
	
	@GetMapping("/customLogout")
	public void logoutGET() {

		log.info("custom logout");
	}

	@PostMapping("/customLogout")
	public void logoutPost() {

		log.info("post custom logout");
	}

}
