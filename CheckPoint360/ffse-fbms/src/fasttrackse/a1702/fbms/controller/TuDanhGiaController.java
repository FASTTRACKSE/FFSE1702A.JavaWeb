package fasttrackse.a1702.fbms.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.model.entity.TuDanhGia;
import fasttrackse.a1702.fbms.service.TuDanhGiaService;



@Controller
public class TuDanhGiaController {
	
	@Autowired
	private TuDanhGiaService tuDanhGiaService;
	
	@RequestMapping("/formtudanhgia")
	public String formtudanhgia(Model model) {
		model.addAttribute("tudanhgia", new TuDanhGia());
		return "tudanhgia";
	}
	
	@RequestMapping("/tudanhgia")
	public String tudanhgia(@ModelAttribute("tudanhgia") TuDanhGia tudanhgia, Model model) {
		this.tuDanhGiaService.luuDanhGia(tudanhgia);
		return "form";
	}
	
	@RequestMapping("/suanhap-view/{id}")
	public String suanhap(@PathVariable("id") int id, Model model) {
			TuDanhGia tudanhgia = tuDanhGiaService.xemNhap(id)
		return null;
	}
	
	

	
}
