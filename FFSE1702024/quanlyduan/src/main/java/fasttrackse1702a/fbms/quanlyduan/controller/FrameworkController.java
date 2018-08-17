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

import fasttrackse1702a.fbms.quanlyduan.entity.Framework;
import fasttrackse1702a.fbms.quanlyduan.service.FrameworkService;

@Controller
@RequestMapping("/framework")
public class FrameworkController {
	@Autowired
	FrameworkService frameworkService;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "framework/create.jsp");
		mm.put("framework", new Framework());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(ModelMap mm,@ModelAttribute("framework") @Validated Framework framework, BindingResult result) {
		mm.put("view", "framework/create.jsp");
		System.out.println(framework.getMaFramework());
		if(result.hasErrors()) {
			return "layout";
		}
		frameworkService.save(framework);
		return "redirect:list";
	}

	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "framework/danhsach.jsp");

		mm.put("list", frameworkService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maFramework}" })
	public String update(ModelMap mm,@PathVariable("maFramework") String maFramework) {
		mm.put("view", "framework/capnhat.jsp");		
		mm.put("framework", frameworkService.getById(maFramework));
		//System.out.println(FrameworkService.getById(maFramework).getTenFramework());
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(ModelMap mm,@ModelAttribute("framework") @Validated Framework framework, BindingResult result) {
		mm.put("view", "framework/capnhat.jsp");

		if(result.hasErrors()) {
			return "layout";
		}
		frameworkService.update(framework);
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maFramework}" })
	public String delete(ModelMap mm,@PathVariable("maFramework") String maFramework) {
		mm.put("view", "framework/capnhat.jsp");		
		frameworkService.delete(maFramework);
		return "redirect:/";
	}

}
