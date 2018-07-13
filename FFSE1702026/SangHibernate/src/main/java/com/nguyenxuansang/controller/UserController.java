package com.nguyenxuansang.controller;

import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nguyenxuansang.entities.Users;
import com.nguyenxuansang.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	
	@RequestMapping("/")
	public String index(ModelMap mm) {
		
		mm.put("list", userService.getAll());
		return "index";
	}
	
	@RequestMapping("/create")
	public String create(ModelMap mm) {
		mm.put("user", new Users());
		return "create";
	}
	
	@RequestMapping("/save")
	public String save(@Valid @ModelAttribute("user") Users user,BindingResult rs) {
		if(rs.hasErrors()) {
			return "create";
		}
		userService.save(user);
		return "redirect:/";
	}
	
	@RequestMapping("/edit/{id}")
	
	public String edit(ModelMap mm,@PathVariable int id) {
		mm.put("user", userService.findById(id));
		return "edit";
	}
	
	
	@RequestMapping("/update")
	public String update(@ModelAttribute("user") Users user,ModelMap mm) {
		userService.update(user);
		
		return "redirect:/";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id)	{
		Users user=userService.findById(id);
		userService.delete(user);
		return "redirect:/";
	}
	
}
