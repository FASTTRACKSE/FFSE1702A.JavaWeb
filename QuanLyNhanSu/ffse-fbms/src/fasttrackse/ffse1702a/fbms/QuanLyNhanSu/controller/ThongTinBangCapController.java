package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.ThongTinBangCap;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.ThongTinBangCapForm;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.ThongTinBangCapService;

@Controller
public class ThongTinBangCapController {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;
	@Autowired
	private ThongTinBangCapService thongTinBangCapService;

	@RequestMapping(value = "/ns/ho_so/bang_cap/edit/{maNhanVien}", method = RequestMethod.GET)
	public String editThongTinBangCap(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
		ThongTinBangCapForm thongTinBangCapForm = new ThongTinBangCapForm(hsnv.getThongTinBangCaps());
		List<ThongTinBangCap> listThongTinBangCap = thongTinBangCapForm.getListThongTinBangCap();
		if (listThongTinBangCap.size() == 0) {
			ThongTinBangCap ttbc = new ThongTinBangCap();
			ttbc.setHoSoNhanVien(hsnv);
			listThongTinBangCap.add(ttbc);
			thongTinBangCapForm.setListThongTinBangCap(listThongTinBangCap);
		}
		model.addAttribute("hoSoNhanVien", hsnv);
		model.addAttribute("thongTinBangCapForm", thongTinBangCapForm);
		return "QuanLyNhanSu/QuanLyHoSo/ThongTinBangCapForm";
	}

	@RequestMapping(value = "/ns/ho_so/bang_cap/save", method = RequestMethod.POST)
	public String saveHoSoNhanVien(@ModelAttribute("thongTinBangCapForm") ThongTinBangCapForm thongTinBangCapForm,
			BindingResult bindingResult, HttpServletRequest request) {
		List<ThongTinBangCap> listThongTinBangCap = thongTinBangCapForm.getListThongTinBangCap();

		if (listThongTinBangCap != null && listThongTinBangCap.size() > 0) {
			for (ThongTinBangCap ttbc : listThongTinBangCap) {
				int id = ttbc.getId();
				if (id == 0) {
					this.thongTinBangCapService.addThongTinBangCap(ttbc);
				} else if (id < 0) {
					this.thongTinBangCapService.deleteThongTinBangCap(Math.abs(id));
				} else {
					this.thongTinBangCapService.updateThongTinBangCap(ttbc);
				}
			}
		}

		return "redirect:/ns/ho_so/";
	}
}
