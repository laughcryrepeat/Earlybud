package com.earlybud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.earlybud.model.Member;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

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
	@RequestMapping(value="/kakaologin", produces="application/json", method= {RequestMethod.GET, RequestMethod.POST})
	public void kakaoLogin(@RequestParam("code") String code, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("code: " + code);
	}
	
	@RequestMapping("/join")
	public void joinInput(String error, Model model, Member m) {
		log.info("JOIN error: " + error);
		log.warn("[JOIN] NEW MEMBER name: "+ m.getNickname());
		log.warn("[JOIN] NEW MEMBER email: "+ m.getEmail());
	}
	
	@GetMapping("/customLogout")
	public void logoutGET() {

		log.info("custom logout");
	}

	@PostMapping("/customLogout")
	public void logoutPost() {

		log.info("post custom logout");
	}

}
