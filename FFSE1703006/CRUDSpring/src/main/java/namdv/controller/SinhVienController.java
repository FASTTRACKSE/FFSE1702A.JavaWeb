package namdv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import namdv.model.entities.SinhVien;
import namdv.service.SinhVienService;

@Controller
public class SinhVienController {
	private SinhVienService sinhVienService;

	@Autowired(required = true)
	@Qualifier(value = "sinhVienService")
	public void setSinhVienService(SinhVienService ss) {
		this.sinhVienService = ss;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listSinhVien(Model model) {

		model.addAttribute("list", this.sinhVienService.listSinhVien());
		return "sinhvien/SinhVienList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addSinhVienForm(Model model) {

		model.addAttribute("sinhVien", new SinhVien());
		return "sinhvien/SinhVienForm";
	}

	@RequestMapping("/edit/{id}")
	public String editSinhVienForm(@PathVariable("id") int id, Model model) {

		model.addAttribute("sinhVien", this.sinhVienService.getSinhVienById(id));
		return "sinhvien/SinhVienForm";
	}

	// For add and update person both
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveSinhVien(@ModelAttribute("sinhVien") SinhVien sv) {

		if (sv.getMaSinhVien() == 0) {
			// new person, add it
			this.sinhVienService.addSinhVien(sv);
		} else {
			// existing person, call update
			this.sinhVienService.updateSinhVien(sv);
		}

		return "redirect:/";
	}

	@RequestMapping("/delete/{id}")
	public String deleteSinhVien(@PathVariable("id") int id) {

		this.sinhVienService.deleteSinhVien(id);
		return "redirect:/";
	}
}
