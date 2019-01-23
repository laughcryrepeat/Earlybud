package com.earlybud.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MemberUploadController {

	@RequestMapping("mypage")
	public String mypage() {
		return "mypage/myPageDetail";
	}
	@RequestMapping(value="juso")
	public String juso() {
		return "mypage/jusoPopup";
	}
}
