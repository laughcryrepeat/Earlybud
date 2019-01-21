package com.earlybud.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MemberUploadController {

	@RequestMapping("mypage")
	public String mypage(Locale locale, Model model) {
		return "mypage/myPageDetail";
	}
	@RequestMapping("juso")
	public String juso(Locale locale, Model model) {
		return "mypage/jusoPopup";
	}
}
