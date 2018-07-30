package com.ffse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ffse.entities.Student;
import com.ffse.entities.StudentClass;
import com.ffse.service.StudentService;


@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	//list
	@RequestMapping(value = { "/", "/index" })
	public String index(Model model) {
		model.addAttribute("listStudent", studentService.findAll());
		return "index";
	}
	//insert
	@RequestMapping("/studentInsert")
	public String insert(Model model) {
		model.addAttribute("student", new Student());
	    return "studentAdd";
	}
	@RequestMapping("/studentSave")
	public String save(@ModelAttribute("Student") Student student, Model model ) {
		studentService.save(student);
		return "redirect:/index";
	}
	//view
	@RequestMapping("/studentView/{id}")
	public String studentView(@PathVariable int id, Model model) {
	    Student student = studentService.findById(id);
	    model.addAttribute("student", student);
	    return "studentview";
	  }
	 //update
	  @RequestMapping("/studentUpdate/{id}")
	  public String studentUpdate(@PathVariable int id, Model model) {
	    Student student = studentService.findById(id);
	    model.addAttribute("student", student);
	    return "studentUpdate";
	  }
	  @RequestMapping("/Update")
	  public String doUpdate(@ModelAttribute("Student") Student student, Model model) {
	    studentService.update(student); 
	    return "redirect:/";
	  }
	//delete
	  @RequestMapping("/studentDelete/{id}")
	  public String doDelete(@PathVariable int id, Model model) {
	    studentService.delete(id);
	    return "redirect:/";
	  }
	@ModelAttribute("listClass")
	public List<StudentClass> listclass(){
	return	this.studentService.listclass();
	}
	
}
