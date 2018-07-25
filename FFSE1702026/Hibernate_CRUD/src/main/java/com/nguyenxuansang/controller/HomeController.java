package com.nguyenxuansang.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class HomeController {
	@RequestMapping(value = {  "/","" })
	public String login(@RequestParam(value = "error", required = false) final String error, final Model model,final  Principal pr ) {
		return "welcome";
		
	}
		
}
