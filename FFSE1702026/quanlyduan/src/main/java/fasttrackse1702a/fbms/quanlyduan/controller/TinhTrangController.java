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

import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;
import fasttrackse1702a.fbms.quanlyduan.service.TinhTrangService;


	@Controller
	@RequestMapping("/tinhtrang")
	public class TinhTrangController {
		@Autowired
		TinhTrangService tinhTrangService;
		@Autowired
	    MessageSource messageSource;

		@RequestMapping(value = { "/create" })
		public String index(ModelMap mm) {
			mm.put("view", "tinhtrang/create.jsp");
			mm.put("title", "tinhtrang.add");
			mm.put("tinhtrang", new TinhTrang());
			return "layout";
		}

		@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
		public String create(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("tinhtrang") @Validated TinhTrang tinhTrang, BindingResult result) {
			if(tinhTrangService.getById(tinhTrang.getMaTinhTrang())!=null) {		
				FieldError error = new FieldError("tinhtrang", "maTinhTrang", messageSource.getMessage("Unique.tinhtrang.maTinhTrang", new String[]{tinhTrang.getMaTinhTrang()}, Locale.getDefault()));
		         result.addError(error);
			}
			
			if(result.hasErrors()) {
				mm.put("view", "tinhtrang/create.jsp");
				return "layout";
			}
			tinhTrangService.save(tinhTrang);
			redirectAttributes.addFlashAttribute("message", "Added successfully.");
			return "redirect:list";
		}
		
		@RequestMapping(value = { "/list" })
		public String list(ModelMap mm) {
			mm.put("view", "tinhtrang/danhsach.jsp");
			mm.put("title", "tinhtrang.list");
			mm.put("list", tinhTrangService.getAll());
			return "layout";
		}
		@RequestMapping(value = { "/update/{maTinhTrang}" })
		public String update(ModelMap mm,@PathVariable("maTinhTrang") String maTinhTrang) {
			mm.put("view", "tinhtrang/capnhat.jsp");		
			mm.put("tinhtrang", tinhTrangService.getById(maTinhTrang));
			mm.put("title", "tinhtrang.update");
			return "layout";
		}
		@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
		public String update(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("tinhtrang") @Validated TinhTrang tinhTrang, BindingResult result) {
			mm.put("view", "tinhtrang/capnhat.jsp");
			
			if(result.hasErrors()) {
				return "layout";
			}
			tinhTrangService.update(tinhTrang);
			redirectAttributes.addFlashAttribute("message", "Update successfully.");
			return "redirect:list";
		}
		@RequestMapping(value = { "/delete/{maTinhTrang}" })
		public String delete(final RedirectAttributes redirectAttributes,ModelMap mm,@PathVariable("maTinhTrang") String maTinhTrang) {
			mm.put("view", "tinhtrang/capnhat.jsp");		
			tinhTrangService.delete(maTinhTrang);
			redirectAttributes.addFlashAttribute("message", "Delete successfully.");
			return "redirect:/tinhtrang/list";
		}
	}

