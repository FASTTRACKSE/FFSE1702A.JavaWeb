package fasttrackse1702a.fbms.quanlyduan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;
import fasttrackse1702a.fbms.quanlyduan.service.KhachHangService;

@Controller
@RequestMapping("/khachhang")
public class KhachHangController {
	@Autowired
	KhachHangService khachHangService;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "khachhang/create.jsp");
		mm.put("khachhang", new KhachHang());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(ModelMap mm,@ModelAttribute("khachhang") @Validated KhachHang khachhang, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "khachhang/create.jsp");
			return "layout";
		}
		khachHangService.save(khachhang);
		return "redirect:/";
	}
	
	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "khachhang/danhsach.jsp");
		
		mm.put("list", khachHangService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maKhachHang}" })
	public String update(ModelMap mm,@PathVariable("maKhachHang") String maKhachHang) {
		mm.put("view", "khachhang/capnhat.jsp");		
		mm.put("khachhang", khachHangService.getById(maKhachHang));
		
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(ModelMap mm,@ModelAttribute("khachhang") @Validated KhachHang khachhang, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "khachhang/capnhat.jsp");
			return "layout";
		}
		khachHangService.update(khachhang);
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maKhachHang}" })
	public String delete(ModelMap mm,@PathVariable("maKhachHang") String maKhachHang) {
				
		khachHangService.delete(maKhachHang);
		return "redirect:list";
	}

}
