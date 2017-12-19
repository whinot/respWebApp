package com.protoApp.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.protoApp.main.Student;
import java.util.List;
import java.util.ArrayList;

@Controller
public class UserController {
	
	public static List <Student> studentList= new ArrayList<Student>();
	
	@RequestMapping("/processForm")
	public String getTable(Model model){
		
		studentList.add(new Student (1,"Dennise","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (2,"Elodia","Fuhrman","	Wallpaperer Helper","Active"));
		studentList.add(new Student (3,"Raeann","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (4,"Junie	","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (5,"Solomon","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (6,"Bar","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (7,"Mark","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (8,"matt","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (9,"Skere","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (10,"Random","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (11,"Kernel","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (12,"Ivan","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (13,"Sergio","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (14,"Toc","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (15,"Dennise","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (16,"Dennise","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (17,"Dennise","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (18,"Dennise","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (19,"Dennise","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (20,"Dennise","Fuhrman","High School History Teacher","Active"));
		
		model.addAttribute("query",studentList);
		
		return "DataTable";
	}

}
