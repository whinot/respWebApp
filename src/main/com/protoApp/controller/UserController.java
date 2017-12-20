package com.protoApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.protoApp.Student;

import java.util.List;
import java.util.ArrayList;

@Controller
public class UserController {
	
	public static List <Student> studentList= new ArrayList<Student>();
	
	@RequestMapping("/processForm")
	public String getTable(Model model){
		
		studentList.clear();
		studentList.add(new Student (1,"Dennise","Fuhrman","High School History Teacher","Active"));
		studentList.add(new Student (2,"Elodia","Fuhrman","	Wallpaperer Helper","Active"));
		studentList.add(new Student (3,"Raeann","Meret","High School History Teacher","Active"));
		studentList.add(new Student (4,"Junie	","Kla","High School History Teacher","Active"));
		studentList.add(new Student (5,"Solomon","Ilva","High School History Teacher","Active"));
		studentList.add(new Student (6,"Bar","Nope","High School History Teacher","Active"));
		studentList.add(new Student (7,"Mark","Test","High School History Teacher","Active"));
		studentList.add(new Student (8,"matt","Reset","High School History Teacher","Active"));
		studentList.add(new Student (9,"Skere","Rossi","High School History Teacher","Active"));
		studentList.add(new Student (10,"Random","Lioa","High School History Teacher","Active"));
		studentList.add(new Student (11,"Kernel","Treve","High School History Teacher","Active"));
		studentList.add(new Student (12,"Ivan","Lol","High School History Teacher","Active"));
		studentList.add(new Student (13,"Sergio","Tyron","High School History Teacher","Active"));
		studentList.add(new Student (14,"Toc","Ytre","High School History Teacher","Active"));
		studentList.add(new Student (15,"Nosens","Klio","High School History Teacher","Active"));
		studentList.add(new Student (16,"mark","Alanmi","High School History Teacher","Active"));
		studentList.add(new Student (17,"Rose","Poha","High School History Teacher","Active"));
		studentList.add(new Student (18,"Giacomo","Retera","High School History Teacher","Active"));
		studentList.add(new Student (19,"Sergio","Fake","High School History Teacher","Active"));
		studentList.add(new Student (20,"Alberto","Bio","High School History Teacher","Active"));
		
		model.addAttribute("query",studentList);
		
		return "DataTable";
	}

}
