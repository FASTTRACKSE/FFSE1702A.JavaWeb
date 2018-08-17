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

import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;
import fasttrackse1702a.fbms.quanlyduan.service.NgonNguService;

@Controller
@RequestMapping("/ngonngu")
public class NgonNguController {
	@Autowired
	NgonNguService ngonNguService;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "ngonngu/create.jsp");
		mm.put("ngonngu", new NgonNgu());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(ModelMap mm,@ModelAttribute("ngonngu") @Validated NgonNgu ngonNgu, BindingResult result) {
		mm.put("view", "ngonngu/create.jsp");
		
		if(result.hasErrors()) {
			return "layout";
		}
		ngonNguService.save(ngonNgu);
		return "redirect:/";
	}
	
	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "ngonngu/danhsach.jsp");
		
		mm.put("list", ngonNguService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maNgonNgu}" })
	public String update(ModelMap mm,@PathVariable("maNgonNgu") String maNgonNgu) {
		mm.put("view", "ngonngu/capnhat.jsp");		
		mm.put("ngonngu", ngonNguService.getById(maNgonNgu));
		System.out.println(ngonNguService.getById(maNgonNgu).getTenNgonNgu());
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(ModelMap mm,@ModelAttribute("ngonngu") @Validated NgonNgu ngonNgu, BindingResult result) {
		mm.put("view", "ngonngu/capnhat.jsp");
		
		if(result.hasErrors()) {
			return "layout";
		}
		ngonNguService.update(ngonNgu);
		return "redirect:/";
	}
	@RequestMapping(value = { "/delete/{maNgonNgu}" })
	public String delete(ModelMap mm,@PathVariable("maNgonNgu") String maNgonNgu) {
		mm.put("view", "ngonngu/capnhat.jsp");		
		ngonNguService.delete(maNgonNgu);
		return "redirect:/";
	}

}
