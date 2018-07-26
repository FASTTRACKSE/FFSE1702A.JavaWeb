package namdv.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import namdv.model.entities.LopHoc;
import namdv.model.entities.SinhVien;
import namdv.service.LopHocService;
import namdv.service.SinhVienService;

@Controller
@SessionAttributes("lopHoc")
public class SinhVienController {

	@Autowired
	private SinhVienService sinhVienService;

	@Autowired
	private LopHocService lopHocService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getAllSinhVien(Model model, @RequestParam(value = "page", defaultValue = "1") Integer page,
			Integer maxResult) {
		Integer offset = (page - 1) * 10;
		model.addAttribute("count", this.sinhVienService.count());
		model.addAttribute("offset", offset);
		model.addAttribute("list", this.sinhVienService.getAllSinhVien(offset, maxResult));
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

	// For add and update sv both
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveSinhVien(@ModelAttribute("sinhVien") @Valid SinhVien sv, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "sinhvien/SinhVienForm";
		}

		if (sv.getMaSinhVien() == null) {
			// new sv, add it
			this.sinhVienService.addSinhVien(sv);
		} else {
			// existing sv, call update
			this.sinhVienService.updateSinhVien(sv);
		}

		return "redirect:/";
	}

	@RequestMapping("/delete/{id}")
	public String deleteSinhVien(@PathVariable("id") int id) {

		this.sinhVienService.deleteSinhVien(id);
		return "redirect:/";
	}

	@ModelAttribute("lopHoc")
	public List<LopHoc> initializeLopHoc() {
		return this.lopHocService.getAllLopHoc();
	}
}
