package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.PhongBan;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyPhongBanService;

@Controller
public class QuanLyPhongBanController {
	@Autowired
	private QuanLyPhongBanService quanlyphongbanService;

	@RequestMapping(value = "/ns/phong_ban", method = RequestMethod.GET)

	public String listPhongBan(Model model) {
		model.addAttribute("phongBan", new PhongBan());
		model.addAttribute("listPhongBan", this.quanlyphongbanService.listPhongBan());
		return "QuanLyNhanSu/QuanLyPhongBan/PhongBan";
	}

	@RequestMapping(value = "/ns/phong_ban/add", method = RequestMethod.GET)
	public String addPhongBanForm(Model model) {

		model.addAttribute("phongBan", new PhongBan());
		return "QuanLyNhanSu/QuanLyPhongBan/FormPhongBan";
	}

	@RequestMapping(value = "/ns/phong_ban/save", method = RequestMethod.POST)
	public String addPhongBan(@ModelAttribute("phongBan")@Valid PhongBan p,BindingResult bindingResult, Model model) {
		PhongBan pb = this.quanlyphongbanService.getMaPhongBan(p.getMaPhongBan());
	
		if (bindingResult.hasErrors()) {
			return "QuanLyNhanSu/QuanLyPhongBan/FormPhongBan";
		}
		if (pb == null) {
			this.quanlyphongbanService.addPhongBan(p);
		} else {
			this.quanlyphongbanService.updatePhongBan(p);
		}

		return "redirect:/ns/phong_ban";

	}

	@RequestMapping("/remove/{maPhongBan}")
	public String removePhongBan(@PathVariable("maPhongBan") String id) {

		this.quanlyphongbanService.removePhongBan(id);
		return "redirect:/ns/phong_ban";
	}

	@RequestMapping("/edit/{maPhongBan}")
	public String editPhongBan(@PathVariable("maPhongBan") String id, Model model) {
		model.addAttribute("phongBan", this.quanlyphongbanService.getMaPhongBan(id));
		return "QuanLyNhanSu/QuanLyPhongBan/FormPhongBan";
	}

}
