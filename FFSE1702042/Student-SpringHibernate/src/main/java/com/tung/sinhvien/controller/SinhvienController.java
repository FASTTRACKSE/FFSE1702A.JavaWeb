package com.tung.sinhvien.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tung.sinhvien.dao.SinhvienDAO;
import com.tung.sinhvien.entity.sinhvien;

@Controller
public class SinhvienController {
	
	@Autowired
	SinhvienDAO dao;

	public SinhvienDAO getDao() {
		return dao;
	}

	public void setDao(SinhvienDAO dao) {
		this.dao = dao;
	}

	@RequestMapping(value = {"/", "/index" }, method = RequestMethod.GET)
	public String list(Model model,@RequestParam(value="page",required=false,defaultValue="1") int page ) {
		model.addAttribute("list", dao.getAll(page));
		int lastPage = (int) Math.ceil(dao.totalRecords()/3.0); 
		model.addAttribute("currentPage",page);
		model.addAttribute("lastPage", lastPage);
		return "index";
		
	}
		

	

	@RequestMapping("/create-view")
	public String create_view(Model model) {
		model.addAttribute("student", new sinhvien());
		model.addAttribute("listLop", dao.getLop());
		
		List<String> listGender = new ArrayList<String>();
		listGender.add("Men");
		listGender.add("Women");
		listGender.add("Other");
		model.addAttribute("listGender", listGender);
		
		return "create";
	}
		
	@RequestMapping("/create")
	public String create(@ModelAttribute("Student") sinhvien student, Model model) {
		dao.create(student);
		return "redirect:/index";
	}
	
	@RequestMapping("/update-view/{id}")
	public String update(@PathVariable("id") int id, Model model) {
		sinhvien student = dao.getById(id);
		model.addAttribute("student", student);
		model.addAttribute("listLop", dao.getLop());
		
		List<String> listGender = new ArrayList<String>();
		listGender.add("Men");
		listGender.add("Women");
		listGender.add("Other");
		model.addAttribute("listGender", listGender);
		return "update";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute("Student") sinhvien student, Model model) {
		dao.update(student);
		return "redirect:/index";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		dao.delete(id);
		return "redirect:/index";
	}
}
