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

import fasttrackse1702a.fbms.quanlyduan.entity.NghiepVu;
import fasttrackse1702a.fbms.quanlyduan.service.NghiepVuService;

@Controller
@RequestMapping("/nghiepvu")
public class NghiepVuController {
	@Autowired
	NghiepVuService nghiepVuService;
	 MessageSource messageSource;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "nghiepvu/create.jsp");
		mm.put("nghiepvu", new NghiepVu());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("nghiepvu") @Validated NghiepVu nghiepvu, BindingResult result) {
		if(nghiepVuService.getById(nghiepvu.getMaNghiepVu())!=null) {		
			FieldError error = new FieldError("nghiepvu", "maNghiepVu", messageSource.getMessage("Unique.nghiepvu.maNghiepVu", new String[]{nghiepvu.getMaNghiepVu()}, Locale.getDefault()));
	         result.addError(error);
		}
		if(result.hasErrors()) {
			mm.put("view", "nghiepvu/create.jsp");
			return "layout";
		}
		redirectAttributes.addFlashAttribute("message", "Added successfully.");
		nghiepVuService.save(nghiepvu);
		return "redirect:list";
	}


	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "nghiepvu/danhsach.jsp");
		mm.put("title", "nghiepvu.list");
		mm.put("list", nghiepVuService.getAll());
		return "layout";
	}

	@RequestMapping(value = { "/update/{maNghiepVu}" })
	public String update(ModelMap mm,@PathVariable("maNghiepVu") String maNghiepVu) {
		mm.put("view", "nghiepvu/capnhat.jsp");		
	
		mm.put("nghiepvu", nghiepVuService.getById(maNghiepVu));
		mm.put("title", "nghiepvu.update");
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("nghiepvu") @Validated NghiepVu nghiepvu, BindingResult result) {

		mm.put("view", "nghiepvu/capnhat.jsp");
		if(result.hasErrors()) {
		
			return "layout";
		}
		nghiepVuService.update(nghiepvu);
		redirectAttributes.addFlashAttribute("message", "Update successfully.");
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maNghiepVu}" })
	public String delete(final RedirectAttributes redirectAttributes,ModelMap mm,@PathVariable("maNghiepVu") String maNghiepVu) {
		mm.put("view", "nghiepvu/capnhat.jsp");		
		nghiepVuService.delete(maNghiepVu);
		redirectAttributes.addFlashAttribute("message", "Delete successfully.");
		return "redirect:/nghiepvu/list";
	}

}
