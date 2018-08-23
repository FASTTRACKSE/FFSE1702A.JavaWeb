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

import fasttrackse1702a.fbms.quanlyduan.entity.Framework;
import fasttrackse1702a.fbms.quanlyduan.service.FrameworkService;

@Controller
@RequestMapping("/framework")
public class FrameworkController {
	@Autowired
	FrameworkService frameworkService;
	@Autowired
    MessageSource messageSource;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("title", "framework.add");
		mm.put("view", "framework/create.jsp");
		mm.put("framework", new Framework());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("framework") @Validated Framework framework, BindingResult result) {
		
		if(frameworkService.getById(framework.getMaFramework())!=null) {		
			FieldError error = new FieldError("framework", "maFramework", messageSource.getMessage("Unique.framework.maFramework", new String[]{framework.getMaFramework()}, Locale.getDefault()));
	         result.addError(error);
		}
		if(result.hasErrors()) {
			mm.put("view", "framework/create.jsp");
			return "layout";
		}
		redirectAttributes.addFlashAttribute("message", "Added successfully.");
		frameworkService.save(framework);
		return "redirect:list";
	}

	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "framework/danhsach.jsp");
		mm.put("title", "framework.list");
		mm.put("list", frameworkService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maFramework}" })
	public String update(ModelMap mm,@PathVariable("maFramework") String maFramework) {
		mm.put("view", "framework/capnhat.jsp");		
		mm.put("framework", frameworkService.getById(maFramework));
		mm.put("title", "framework.update");
		//System.out.println(FrameworkService.getById(maFramework).getTenFramework());
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("framework") @Validated Framework framework, BindingResult result) {
		mm.put("view", "framework/capnhat.jsp");

		if(result.hasErrors()) {
			return "layout";
		}
		frameworkService.update(framework);
		redirectAttributes.addFlashAttribute("message", "Update successfully.");
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maFramework}" })
	public String delete(final RedirectAttributes redirectAttributes,ModelMap mm,@PathVariable("maFramework") String maFramework) {
		mm.put("view", "framework/capnhat.jsp");		
		frameworkService.delete(maFramework);
		redirectAttributes.addFlashAttribute("message", "Delete successfully.");
		return "redirect:/framework/list";
	}

}
