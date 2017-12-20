package com.protoApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showPage(){
		return "login";
	}
	
	@RequestMapping("/loginPage")
	public String showLogin(){
		return "login";
	}

}
