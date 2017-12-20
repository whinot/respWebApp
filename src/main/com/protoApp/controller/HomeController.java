package com.protoApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.protoApp.Function;

@Controller
@SessionAttributes("functionBean")
public class HomeController {
	
	@ModelAttribute("functionBean")
	public Function setUpUserForm() {
		return new Function();
	}
	
	
	@RequestMapping("/")
	public String showPage(){
		return "home";
	}
	
	@RequestMapping("/homePage")
	public String showLogin(){
		return "home";
	}

}
