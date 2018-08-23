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

import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;
import fasttrackse1702a.fbms.quanlyduan.service.NgonNguService;

@Controller
@RequestMapping("/ngonngu")
public class NgonNguController {
	@Autowired
	NgonNguService ngonNguService;
	@Autowired
    MessageSource messageSource;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "ngonngu/create.jsp");
		mm.put("title", "ngonngu.add");
		mm.put("ngonngu", new NgonNgu());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("ngonngu") @Validated NgonNgu ngonNgu, BindingResult result) {
		
		if(ngonNguService.getById(ngonNgu.getMaNgonNgu())!=null) {		
			FieldError error = new FieldError("ngonngu", "maNgonNgu", messageSource.getMessage("Unique.ngonngu.maNgonNgu", new String[]{ngonNgu.getMaNgonNgu()}, Locale.getDefault()));
	         result.addError(error);
		}
		if(result.hasErrors()) {
			mm.put("view", "ngonngu/create.jsp");
			return "layout";
		}
		ngonNguService.save(ngonNgu);
		redirectAttributes.addFlashAttribute("message", "Added successfully.");
		return "redirect:list";
	}
	
	@RequestMapping(value = { "/list" })
	public String list(ModelMap mm) {
		mm.put("view", "ngonngu/danhsach.jsp");
		mm.put("title", "ngonngu.list");
		mm.put("list", ngonNguService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maNgonNgu}" })
	public String update(ModelMap mm,@PathVariable("maNgonNgu") String maNgonNgu) {
		mm.put("view", "ngonngu/capnhat.jsp");		
		mm.put("ngonngu", ngonNguService.getById(maNgonNgu));
		mm.put("title", "ngonngu.update");
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("ngonngu") @Validated NgonNgu ngonNgu, BindingResult result) {
		mm.put("view", "ngonngu/capnhat.jsp");
		
		if(result.hasErrors()) {
			return "layout";
		}
		ngonNguService.update(ngonNgu);
		redirectAttributes.addFlashAttribute("message", "Update successfully.");
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maNgonNgu}" })
	public String delete(final RedirectAttributes redirectAttributes,ModelMap mm,@PathVariable("maNgonNgu") String maNgonNgu) {
		mm.put("view", "ngonngu/capnhat.jsp");		
		ngonNguService.delete(maNgonNgu);
		redirectAttributes.addFlashAttribute("message", "Delete successfully.");
		return "redirect:/ngonngu/list";
	}

}
