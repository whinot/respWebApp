package com.protoApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.protoApp.Function;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showPage(@ModelAttribute("functionBean") Function function){
		return "home";
	}
	
	@RequestMapping("/loginPage")
	public String showLogin(){
		return "home";
	}

}
