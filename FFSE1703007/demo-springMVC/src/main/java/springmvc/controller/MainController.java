package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.LockMode;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.dao.StudentDAO;
import springmvc.dao.StudentDAOimpl;
import springmvc.entity.Student;
import springmvc.service.StudentService;
import springmvc.service.StudentServiceImpl;

@Controller
public class MainController {
	
	
	@Autowired
	StudentService studentService;
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	@RequestMapping("/")
	public String index(Model model, @RequestParam(name="page", required=false, defaultValue="1") int currentPage) {
				
		int totalRecords = studentService.findAll().size();
		int recordsPerPage = 1;
		int totalPages = totalRecords/recordsPerPage;
		int startPosition = recordsPerPage*(currentPage - 1);
		
		
		model.addAttribute("listStudent", studentService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		
		return "index";
	}
	
	@RequestMapping("/create-view")
	public String create_view(Model model) {
		model.addAttribute("student", new Student());
		model.addAttribute("listCourse", studentService.loadAllCourse());
		
		List<String> listGender = new ArrayList<String>();
		listGender.add("Men");
		listGender.add("Women");
		listGender.add("Other");
		model.addAttribute("listGender", listGender);
		
		return "create";
	}

	@RequestMapping("/create")
	public String create(@ModelAttribute("Student") Student student) {
		studentService.create(student);
		return "redirect:/";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		studentService.delete(id);
		return "redirect:/";
	}
	
	@RequestMapping("/edit-view/{id}")
	public String edit_view(@PathVariable("id") int id, Model model) {
		model.addAttribute("student", studentService.findById(id));
		
		model.addAttribute("listCourse", studentService.loadAllCourse());
		List<String> listGender = new ArrayList<String>();
		listGender.add("Men");
		listGender.add("Women");
		listGender.add("Other");
		model.addAttribute("listGender", listGender);
		
			
		return "edit";
	}
	
	@RequestMapping("/edit")
	public String edit(@ModelAttribute("Student") Student student) {
		studentService.update(student);
		return "redirect:/";
	}
}
