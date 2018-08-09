package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.entity.Student;
import springmvc.service.StudentService;


@Controller
public class MainController {

	@Autowired
	StudentService studentService;

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	@RequestMapping("/")
	public String index(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {

		int totalRecords = studentService.findAll().size();
		int recordsPerPage = 3;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listStudent", studentService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);

		return "index";
	}


	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String showForm(Model model) {
		model.addAttribute("student", new Student());

		model.addAttribute("listCourse", studentService.loadAllCourse());

		List<String> listGender = new ArrayList<String>();
		listGender.add("Men");
		listGender.add("Women");
		listGender.add("Other");
		model.addAttribute("listGender", listGender);

		return "create";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String createStudent(Model model, @ModelAttribute("student") @Valid Student student,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("listCourse", studentService.loadAllCourse());

			List<String> listGender = new ArrayList<String>();
			listGender.add("Men");
			listGender.add("Women");
			listGender.add("Other");
			model.addAttribute("listGender", listGender);
			return "create";
		}
		studentService.create(student);
		return "redirect:/";
	}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		studentService.delete(id);
		return "redirect:/";
	}


	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
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
	
	@RequestMapping(value="/edit", method = RequestMethod.POST)
	public String edit(Model model, @ModelAttribute("student") @Valid Student student, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("listCourse", studentService.loadAllCourse());

			List<String> listGender = new ArrayList<String>();
			listGender.add("Men");
			listGender.add("Women");
			listGender.add("Other");
			model.addAttribute("listGender", listGender);
			return "edit";
		}
		studentService.update(student);
		return "redirect:/";
	}
	
}
