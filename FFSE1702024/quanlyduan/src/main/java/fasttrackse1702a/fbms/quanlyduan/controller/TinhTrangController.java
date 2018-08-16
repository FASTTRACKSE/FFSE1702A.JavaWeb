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

import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;
import fasttrackse1702a.fbms.quanlyduan.service.TinhTrangService;


	@Controller
	@RequestMapping("/tinhtrang")
	public class TinhTrangController {
		@Autowired
		TinhTrangService tinhTrangService;

		@RequestMapping(value = { "/create" })
		public String index(ModelMap mm) {
			mm.put("view", "tinhtrang/create.jsp");
			mm.put("tinhtrang", new TinhTrang());
			return "layout";
		}

		@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
		public String create(ModelMap mm,@ModelAttribute("tinhtrang") @Validated TinhTrang tinhTrang, BindingResult result) {
			mm.put("view", "tinhtrang/create.jsp");
			
			if(result.hasErrors()) {
				return "layout";
			}
			tinhTrangService.save(tinhTrang);
			return "redirect:list";
		}
		
		@RequestMapping(value = { "/list","" })
		public String list(ModelMap mm) {
			mm.put("view", "tinhtrang/danhsach.jsp");
			
			mm.put("list", tinhTrangService.getAll());
			return "layout";
		}
		@RequestMapping(value = { "/update/{maTinhTrang}" })
		public String update(ModelMap mm,@PathVariable("maTinhTrang") String maTinhTrang) {
			mm.put("view", "tinhtrang/capnhat.jsp");		
			mm.put("tinhtrang", tinhTrangService.getById(maTinhTrang));
			System.out.println(tinhTrangService.getById(maTinhTrang).getTenTinhTrang());
			return "layout";
		}
		@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
		public String update(ModelMap mm,@ModelAttribute("tinhtrang") @Validated TinhTrang tinhTrang, BindingResult result) {
			mm.put("view", "tinhtrang/capnhat.jsp");
			
			if(result.hasErrors()) {
				return "layout";
			}
			tinhTrangService.update(tinhTrang);
			return "redirect:list";
		}
		@RequestMapping(value = { "/delete/{maTinhTrang}" })
		public String delete(ModelMap mm,@PathVariable("maTinhTrang") String maTinhTrang) {
			mm.put("view", "tinhtrang/capnhat.jsp");		
			tinhTrangService.delete(maTinhTrang);
			return "redirect:/";
		}
	}

