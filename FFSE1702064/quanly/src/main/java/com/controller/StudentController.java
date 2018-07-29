package com.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entiny.DatabaseQuanly;
import com.entiny.Student;
@Controller
@RequestMapping("/")
public class StudentController{
	
	@GetMapping
	public String Default() {
		
		DatabaseQuanly databaseQuanly = new DatabaseQuanly();
		return "quanly";
	}
	
}




