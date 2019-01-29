package com.earlybud.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.earlybud.vo.AddrVo;

import jdk.internal.jline.internal.Log;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
public class MemberUploadController {

	@RequestMapping("mypage")
	public String mypage() {
		return "mypage/myPageDetail";
	}
	@RequestMapping(value="juso")
	public String juso(@ModelAttribute("AddrVo") AddrVo addrvo) {
		return "mypage/jusoPopup";
	}
}
