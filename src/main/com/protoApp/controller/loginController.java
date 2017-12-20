package com.protoApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.protoApp.Function;


@Controller
public class loginController 		{
	
	@RequestMapping("/showLoginPage")
	public String showLoginPage(){
		
		/*
		//Create a new user object
		Function function = new Function();
		System.out.println("");
		model.addAttribute("functionBean", function);
		*/
		
		return "LoginPage";
	}

}
