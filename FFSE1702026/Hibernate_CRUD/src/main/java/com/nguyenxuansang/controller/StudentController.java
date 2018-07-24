package com.nguyenxuansang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nguyenxuansang.entities.Student;
import com.nguyenxuansang.service.StudentClassService;
import com.nguyenxuansang.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	StudentService studentSV;

	@Autowired
	StudentClassService studentClassSV;

	@RequestMapping(value = { "/list", "" })

	public String index(ModelMap mm, @RequestParam(value="page",required=false,defaultValue="1")int page) {
		mm.put("list", studentSV.getAll(page));
		int count=(int) studentSV.countStudent()/3+1;
		mm.put("count", count);
		return "index";
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public String create(ModelMap mm) {
		mm.put("list", studentClassSV.getAll());
		mm.put("student", new Student());
		mm.put("action", "add");
		return "form";
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.POST)
	public String add(@ModelAttribute("student") @Validated Student student, BindingResult rs, ModelMap mm) {
		if (rs.hasErrors()) {
			for (ObjectError objectError : rs.getAllErrors()) {
				System.out.println(objectError);
				System.out.println(objectError.getCode());
			}
			mm.put("action", "add");
			mm.put("list", studentClassSV.getAll());
			return "form";
		}

		studentSV.save(student);

		return "redirect:list";
	}

	@RequestMapping(value = "/update/{id}")
	public String edit(@PathVariable int id, ModelMap mm) {
		mm.put("student", studentSV.getById(id));
		mm.put("action", "/Hibernate_CRUD/student/update");
		mm.put("list", studentClassSV.getAll());
		return "form";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute("student") @Validated Student student, BindingResult rs, ModelMap mm) {
		if (rs.hasErrors()) {
			for (ObjectError objectError : rs.getAllErrors()) {
				System.out.println(objectError);
				System.out.println(objectError.getCode());
			}
			mm.put("action", "/Hibernate_CRUD/student/update");
			mm.put("list", studentClassSV.getAll());
			return "form";
		}

		studentSV.save(student);
		return "redirect:list";
	}

	@RequestMapping(value = "/delete/{id}")
	public String delete(@PathVariable int id) {
		studentSV.delete(id);
		return "redirect:/student/list";
	}

}
