package com.springcrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcrud.entity.SinhVienEntity;
import com.springcrud.entity.LopHocEntity;
import com.springcrud.service.SinhVienService;

@Controller
public class SinhVienController {

	@Autowired
	private SinhVienService Service;
	
	@RequestMapping(value = {"/danhsach"}, method = RequestMethod.GET, produces="application/x-www-form-urlencoded;charset=UTF-8")
	public String danhSachSinhVien(Model model) {
		model.addAttribute("sinhvien", new SinhVienEntity());
		model.addAttribute("danhSachSinhVien", Service.danhSachSinhVien());
		return "sinhvien";
	}

	// Same method For both Add and Update Employee
	@RequestMapping(value = "/danhsach/themsv", method = RequestMethod.POST, produces="application/x-www-form-urlencoded;charset=UTF-8")
	public String themSinhvien(@ModelAttribute("sinhvien") SinhVienEntity entity) {

		if (entity.getId()==null || entity.getId() == 0) {
			// new employee, add it
			Service.themSinhVien(entity);
		} else {
			// existing employee, call update
			Service.suaSinhVien(entity);
		}

		return "redirect:/danhsach";

	}

	@RequestMapping("/danhsach/xoasv/{id}")
	public String xoaSinhVien(@PathVariable("id") int id) {

		Service.xoaSinhVien(id);
		return "redirect:/danhsach";
	}

	@RequestMapping("/danhsach/suasv/{id}")
	public String suasv(@PathVariable("id") int id, Model model) {
		model.addAttribute("sinhvien", Service.layID(id));
		model.addAttribute("danhSachSinhVien", Service.danhSachSinhVien());
		return "sinhvien";
	}
	
	@ModelAttribute("danhSachLop")
	public List<LopHocEntity> danhSachLop() {
		return this.Service.danhSachLop();
	}
}
