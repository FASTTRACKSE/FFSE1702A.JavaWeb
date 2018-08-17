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

import fasttrackse1702a.fbms.quanlyduan.entity.VaiTro;
import fasttrackse1702a.fbms.quanlyduan.service.VaiTroService;

@Controller
@RequestMapping("/vaitro")
public class VaiTroController {
	@Autowired
	VaiTroService vaiTroService;
	@Autowired
    MessageSource messageSource;
	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "vaitro/them.jsp");
		mm.put("title", "role.add");
		mm.put("vaitro", new VaiTro());
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("vaitro") @Validated VaiTro vaitro, BindingResult result) {
		if(vaiTroService.getById(vaitro.getMaVaiTro())!=null) {		
			FieldError error = new FieldError("vaitro", "maVaiTro", messageSource.getMessage("Unique.vaitro.maVaiTro", new String[]{vaitro.getMaVaiTro()}, Locale.getDefault()));
	         result.addError(error);
		}
		
		if(result.hasErrors()) {
			mm.put("view", "vaitro/them.jsp");
			return "layout";
			
		}
		vaiTroService.save(vaitro);
		redirectAttributes.addFlashAttribute("message", "Add successfully.");
		return "redirect:list";
	}
	
	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm) {
		mm.put("view", "vaitro/danhsach.jsp");
		mm.put("title", "role.list");
		mm.put("list", vaiTroService.getAll());
		return "layout";
	}
	@RequestMapping(value = { "/update/{maVaiTro}" })
	public String update(ModelMap mm,@PathVariable("maVaiTro") String maVaiTro) {
		mm.put("view", "vaitro/capnhat.jsp");		
		mm.put("vaitro", vaiTroService.getById(maVaiTro));
		mm.put("title", "role.update");
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(final RedirectAttributes redirectAttributes,ModelMap mm,@ModelAttribute("vaitro") @Validated VaiTro vaitro, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "vaitro/capnhat.jsp");
			return "layout";
		}
		vaiTroService.update(vaitro);
		redirectAttributes.addFlashAttribute("message", "Update successfully.");
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maVaiTro}" })
	public String delete(final RedirectAttributes redirectAttributes,ModelMap mm,@PathVariable("maVaiTro") String maVaiTro) {
		//mm.put("view", "vaitro/capnhat.jsp");		
		vaiTroService.delete(maVaiTro);
		redirectAttributes.addFlashAttribute("message", "Delete successfully.");
		return "redirect:/vaitro/list";
	}

}
