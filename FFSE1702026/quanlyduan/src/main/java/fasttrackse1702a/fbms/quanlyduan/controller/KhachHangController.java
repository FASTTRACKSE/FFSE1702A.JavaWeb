package fasttrackse1702a.fbms.quanlyduan.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;
import fasttrackse1702a.fbms.quanlyduan.service.KhachHangService;

@Controller
@RequestMapping("/khachhang")
public class KhachHangController {
	@Autowired
	KhachHangService khachHangService;
	@Autowired
    MessageSource messageSource;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "khachhang/create.jsp");
		mm.put("title", "khachhang.add");
		mm.put("khachhang", new KhachHang());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("khachhang") @Validated KhachHang khachhang, BindingResult result) {
		
		if(khachHangService.getById(khachhang.getMaKhachHang())!=null) {		
			FieldError error = new FieldError("khachhang", "maKhachHang", messageSource.getMessage("Unique.khachhang.maKhachHang", new String[]{khachhang.getMaKhachHang()}, Locale.getDefault()));
	         result.addError(error);
		}
		if(result.hasErrors()) {
			mm.put("view", "khachhang/create.jsp");
			return "layout";
		}
		khachHangService.save(khachhang);
		redirectAttributes.addFlashAttribute("message", "Added successfully.");
		return "redirect:list";
	}
	
	@RequestMapping(value = { "/list" })
	public String list(ModelMap mm) {
		mm.put("view", "khachhang/danhsach.jsp");
		mm.put("title", "khachhang.list");
		mm.put("list", khachHangService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maKhachHang}" })
	public String update(ModelMap mm,@PathVariable("maKhachHang") String maKhachHang) {
		mm.put("view", "khachhang/capnhat.jsp");		
		mm.put("khachhang", khachHangService.getById(maKhachHang));
		mm.put("title", "khachhang.update");
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("khachhang") @Validated KhachHang khachhang, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "khachhang/capnhat.jsp");
			return "layout";
		}
		khachHangService.update(khachhang);
		redirectAttributes.addFlashAttribute("message", "Update successfully.");
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maKhachHang}" })
	public String delete(final RedirectAttributes redirectAttributes,ModelMap mm,@PathVariable("maKhachHang") String maKhachHang) {
				
		khachHangService.delete(maKhachHang);
		redirectAttributes.addFlashAttribute("message", "Delete successfully.");
		return "redirect:/khachhang/list";
	}

}
