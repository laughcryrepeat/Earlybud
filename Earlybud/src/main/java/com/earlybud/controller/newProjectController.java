package com.earlybud.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class newProjectController {
	@RequestMapping("newproject")
	public String newProject(Locale locale, Model model) {
		return "newProject/newproject";
	}
	@RequestMapping("newprojectDetail1")
	public String newProjectDetail1(Locale locale, Model model) {
		return "newProject/newprojectDetail1";
	}
	@RequestMapping("newprojectDetail2")
	public String newProjectDetail2(Locale locale, Model model) {
		return "newProject/newprojectDetail2";
	}
	@RequestMapping("newprojectDetail3")
	public String newProjectDetail3(Locale locale, Model model) {
		return "newProject/newprojectDetail3";
	}
}
