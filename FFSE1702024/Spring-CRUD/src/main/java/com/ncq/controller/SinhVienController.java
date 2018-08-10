package com.ncq.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ncq.model.SinhVien;
import com.ncq.service.SinhVienService;

@Controller
public class SinhVienController {
       @Autowired
       private SinhVienService sinhvienService;

       @RequestMapping(value ="/")
   	public String listsv(Model model) {
   		model.addAttribute("sinhvien", new SinhVien());
   		model.addAttribute("sinhvienList", sinhvienService.listSinhVien());
		return "list";
		}
       @RequestMapping(value ="/create")
       public String create(Model model) {
    	   model.addAttribute("sinhvien", new SinhVien());
    	   model.addAttribute("listLop", sinhvienService.getLop());
    	   List<String> listGender = new ArrayList<String>();
    	   listGender.add("Men");
    	   listGender.add("Women");
    	   listGender.add("Other");
    	
    	   model.addAttribute("listgender", listGender);
    	   
    	   
         return "create";
       }
       @RequestMapping(value ="/add")
       public String addSinhVien(@ModelAttribute("sinhvien") SinhVien sinhvien,Model model) {
    	   sinhvienService.addSinhVien(sinhvien);
    	   model.addAttribute("sinhvienList", sinhvienService.listSinhVien());
		return "list";
       }
       @RequestMapping(value ="/remove/{id}")
       public String removeSinhVien(@PathVariable("id") int id,Model model) {
    	   sinhvienService.removeSinhVien(id);
    	   model.addAttribute("sinhvienList", sinhvienService.listSinhVien());
		return "list";
       }
       @RequestMapping(value ="/update/{id}")
       public String viewupdate(@PathVariable("id") int id,Model model) {
    	  SinhVien sinhvien = sinhvienService.findById(id);
    	  model.addAttribute("sinhvien", sinhvien);
    	  model.addAttribute("listLop", sinhvienService.getLop());
    	  List<String> listGender = new ArrayList<String>();
   	   listGender.add("Men");
   	   listGender.add("Women");
   	   listGender.add("Other");
   	   model.addAttribute("listgender", listGender);
   	   
		return "update";
       }
       @RequestMapping(value ="/up", method = RequestMethod.POST)
       public String update(@ModelAttribute("sinhvien") SinhVien sinhvien,Model model) {
    	   sinhvienService.updateSinhVien(sinhvien);
    	   model.addAttribute("sinhvienList", sinhvienService.listSinhVien());
		return "list";
       }
}
