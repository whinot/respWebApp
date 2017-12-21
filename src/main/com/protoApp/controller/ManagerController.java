package com.protoApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	
	@RequestMapping("/managerPage")
	public String getManagerData(Model model){
		
		model.addAttribute("managerData","Test");
		
		return "ManagerPage";
		
	}

}
