package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.ThongTinGiaDinh;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.ThongTinGiaDinhForm;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.ThongTinGiaDinhService;

@Controller
public class ThongTinGiaDinhController {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;
	@Autowired
	private ThongTinGiaDinhService thongTinGiaDinhService;

	@RequestMapping(value = "/ns/ho_so/gia_dinh/edit/{maNhanVien}", method = RequestMethod.GET)
	public String editThongTinGiaDinh(@PathVariable("maNhanVien") int maNhanVien, Model model) {

		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
		ThongTinGiaDinhForm thongTinGiaDinhForm = new ThongTinGiaDinhForm(hsnv.getThongTinGiaDinhs());
		List<ThongTinGiaDinh> listThongTinGiaDinh = thongTinGiaDinhForm.getListThongTinGiaDinh();

		if (listThongTinGiaDinh.size() == 0) {
			ThongTinGiaDinh ttgd = new ThongTinGiaDinh();
			ttgd.setHoSoNhanVien(hsnv);
			listThongTinGiaDinh.add(ttgd);
			thongTinGiaDinhForm.setListThongTinGiaDinh(listThongTinGiaDinh);
		}
		model.addAttribute("hoSoNhanVien", hsnv);
		model.addAttribute("thongTinGiaDinhForm", thongTinGiaDinhForm);
		return "QuanLyNhanSu/QuanLyHoSo/ThongTinGiaDinhForm";
	}

	@RequestMapping(value = "/ns/ho_so/gia_dinh/save", method = RequestMethod.POST)
	public String saveHoSoNhanVien(
			@ModelAttribute("thongTinGiaDinhForm") @Valid ThongTinGiaDinhForm thongTinGiaDinhForm,
			BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) {

		List<ThongTinGiaDinh> listThongTinGiaDinh = thongTinGiaDinhForm.getListThongTinGiaDinh();

		List<String> errorList = thongTinGiaDinhService.getErrorList(bindingResult);
		List<String> deleteList = thongTinGiaDinhService.getDeleteList(listThongTinGiaDinh);

		int maNhanVien = thongTinGiaDinhForm.getListThongTinGiaDinh().get(0).getHoSoNhanVien().getMaNhanVien();
		if (bindingResult.hasErrors() && !errorList.equals(deleteList)) {
			HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
			model.addAttribute("hoSoNhanVien", hsnv);
			return "QuanLyNhanSu/QuanLyHoSo/ThongTinGiaDinhForm";
		}

		for (ThongTinGiaDinh ttgd : listThongTinGiaDinh) {
			int id = ttgd.getId();
			if (id == 0) {
				this.thongTinGiaDinhService.addThongTinGiaDinh(ttgd);
			} else if (id < 0) {
				this.thongTinGiaDinhService.deleteThongTinGiaDinh(Math.abs(id));
			} else {
				this.thongTinGiaDinhService.updateThongTinGiaDinh(ttgd);
			}
		}

		redirectAttributes.addFlashAttribute("SUCCESS", "TRUE");
		return "redirect:/ns/ho_so/gia_dinh/edit/" + maNhanVien;
	}
}
