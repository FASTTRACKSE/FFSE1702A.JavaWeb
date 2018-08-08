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

import fasttrackse1702a.fbms.quanlyduan.entity.VaiTro;
import fasttrackse1702a.fbms.quanlyduan.service.VaiTroService;

@Controller
@RequestMapping("/vaitro")
public class VaiTroController {
	@Autowired
	VaiTroService vaiTroService;

	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "vaitro/them.jsp");
		mm.put("vaitro", new VaiTro());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(ModelMap mm,@ModelAttribute("vaitro") @Validated VaiTro vaitro, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "vaitro/them.jsp");
			return "layout";
			
		}
		vaiTroService.save(vaitro);
		return "redirect:list";
	}
	
	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "vaitro/danhsach.jsp");
		
		mm.put("list", vaiTroService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maVaiTro}" })
	public String update(ModelMap mm,@PathVariable("maVaiTro") String maVaiTro) {
		mm.put("view", "vaitro/capnhat.jsp");		
		mm.put("vaitro", vaiTroService.getById(maVaiTro));
		System.out.println(vaiTroService.getById(maVaiTro).getTenVaiTro());
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(ModelMap mm,@ModelAttribute("vaitro") @Validated VaiTro vaitro, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "vaitro/capnhat.jsp");
			return "layout";
		}
		vaiTroService.update(vaitro);
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maVaiTro}" })
	public String delete(ModelMap mm,@PathVariable("maVaiTro") String maVaiTro) {
		//mm.put("view", "vaitro/capnhat.jsp");		
		vaiTroService.delete(maVaiTro);
		return "redirect:list";
	}

}
