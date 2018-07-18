package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.dao.StudentDAO;
import springmvc.entity.Student;

@Controller
public class MainController {
	
	@Autowired
	StudentDAO dao;

	public StudentDAO getDao() {
		return dao;
	}

	public void setDao(StudentDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("listStudent", dao.findAll());
		return "index";
	}

	@RequestMapping("/create-view")
	public String create_view(Model model) {
		model.addAttribute("student", new Student());
		model.addAttribute("listCourse", dao.loadAllCourse());
		
		List<String> listGender = new ArrayList<String>();
		listGender.add("Men");
		listGender.add("Women");
		listGender.add("Other");
		model.addAttribute("listGender", listGender);
		
		return "create";
	}

	@RequestMapping("/create")
	public String create(@ModelAttribute("Student") Student student, Model model) {
		dao.create(student);
		return "index";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		dao.delete(id);
		return "index";
	}
}
