package fasttrackse.ffse1702a.fbms.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import fasttrackse.ffse1702a.fhrm.service.quangnc.HoSoService;



@Controller
@RequestMapping(value = { "/quanlihoso" })
public class HoSoController {
	
	@Autowired
	HoSoService hoSoService;
	
	@RequestMapping(value = { "/list" })
	public String index(ModelMap mm) {
		mm.put("hoso", hoSoService.getAll());
		return "QuanTriHeThong/quanlihoso/list";
	}
	
	@RequestMapping(value = { "/hosonhanvien/{maNhanVien}" })
	public String viewhoso(ModelMap mm, @PathVariable("maNhanVien") int maNhanVien) {
		mm.put("hoso", hoSoService.getById(maNhanVien));
		return "QuanTriHeThong/quanlihoso/hosonhanvien";
	}
}