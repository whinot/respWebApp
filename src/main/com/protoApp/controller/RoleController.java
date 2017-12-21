package com.protoApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleController {
	
	@RequestMapping("/roleManager")
	public String roleManager(){
		
		return "AssignRole";
	}

}
