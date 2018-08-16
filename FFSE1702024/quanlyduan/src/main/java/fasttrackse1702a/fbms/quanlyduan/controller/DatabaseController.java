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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse1702a.fbms.quanlyduan.entity.Database;
import fasttrackse1702a.fbms.quanlyduan.service.DatabaseService;

@Controller
@RequestMapping("/database")
public class DatabaseController {
	@Autowired
	DatabaseService databaseService;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "database/them.jsp");
		mm.put("database", new Database());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes, ModelMap mm,
			@ModelAttribute("database") @Validated Database database, BindingResult result) {

		if (result.hasErrors()) {
			mm.put("view", "database/them.jsp");
			return "layout";

		}

		databaseService.save(database);
		redirectAttributes.addFlashAttribute("message", "Added successfully.");

		return "redirect:list";
	}

	@RequestMapping(value = { "/list", "" })
	public String list(ModelMap mm) {
		mm.put("view", "database/danhsach.jsp");

		mm.put("list", databaseService.getAll());
		return "layout";
	}

	@RequestMapping(value = { "/update/{maDatabase}" })
	public String update(ModelMap mm, @PathVariable("maDatabase") String maDatabase) {
		mm.put("view", "database/capnhat.jsp");
		mm.put("database", databaseService.getById(maDatabase));
		System.out.println(databaseService.getById(maDatabase).getTenDatabase());
		return "layout";
	}

	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(ModelMap mm, @ModelAttribute("database") @Validated Database database, BindingResult result) {

		if (result.hasErrors()) {
			mm.put("view", "database/capnhat.jsp");
			return "layout";
		}

		databaseService.update(database);
		return "redirect:list";
	}

	@RequestMapping(value = { "/delete/{maDatabase}" })
	public String delete(ModelMap mm, @PathVariable("maDatabase") String maDatabase) {
		mm.put("view", "database/capnhat.jsp");
		databaseService.delete(maDatabase);
		return "redirect:list";
	}

}
