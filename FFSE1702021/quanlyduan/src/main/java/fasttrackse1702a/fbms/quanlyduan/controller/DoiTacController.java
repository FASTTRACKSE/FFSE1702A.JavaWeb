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

import fasttrackse1702a.fbms.quanlyduan.entity.DoiTac;
import fasttrackse1702a.fbms.quanlyduan.service.DoiTacService;



@Controller
@RequestMapping("/doitac")
public class DoiTacController {
	@Autowired
	DoiTacService doiTacService;
	@Autowired
	MessageSource messageSource;
	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "doitac/them.jsp");
		mm.put("titel", "doitac.add");
		mm.put("doitac", new DoiTac());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("doitac") @Validated DoiTac doitac, BindingResult result) {
		if(doiTacService.getById(doitac.getMaDoiTac())!=null) {		
			FieldError error = new FieldError("doitac", "maDoiTac", messageSource.getMessage("Unique.doitac.maDoiTac", new String[]{doitac.getMaDoiTac()}, Locale.getDefault()));
	         result.addError(error);
		}
		
		if(result.hasErrors()) {
			mm.put("view", "doitac/them.jsp");
			return "layout";
			
		}
		doiTacService.save(doitac);
		redirectAttributes.addFlashAttribute("message","Added successfully.");
		return "redirect:list";
	}

	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "doitac/danhsach.jsp");
		mm.put("titel", "doitac.list");
		mm.put("list", doiTacService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maDoiTac}" })
	public String update(ModelMap mm,@PathVariable("maDoiTac") String maDoiTac) {
		mm.put("view", "doitac/capnhat.jsp");	
		mm.put("titel", "doitac.update");
		mm.put("doitac", doiTacService.getById(maDoiTac));
		System.out.println(doiTacService.getById(maDoiTac).getTenDoiTac());
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("doitac") @Validated DoiTac doitac, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "doitac/capnhat.jsp");
			return "layout";
		}
		doiTacService.update(doitac);
		redirectAttributes.addFlashAttribute("message","update successfully.");
		return "redirect:list";
	} 
	@RequestMapping(value = { "/delete/{maDoiTac}" })
	public String delete(final RedirectAttributes redirectAttributes,ModelMap mm,@PathVariable("maDoiTac") String maDoiTac) {
				
		doiTacService.delete(maDoiTac);
		redirectAttributes.addFlashAttribute("message","Delete successfully.");     
		return "redirect:/doitac/list";
	}

}
