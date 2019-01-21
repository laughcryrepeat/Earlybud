package com.earlybud.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("login")
	public String login(Locale locale, Model model) {
		return "login/login";
	}
}
