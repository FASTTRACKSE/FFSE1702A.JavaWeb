package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		return "create";
	}

	@RequestMapping("/create")
	public String create(@ModelAttribute("Student") Student student, Model model) {
		dao.create(student);
		return "index";
	}
}
