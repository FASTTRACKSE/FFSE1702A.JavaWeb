package fasttrackse.a1702.fbms.QuanLyNhanSu.controller;

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

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ThongTinGiaDinh;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ThongTinGiaDinhForm;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.ThongTinGiaDinhService;

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
	public String saveHoSoNhanVien(@ModelAttribute("thongTinGiaDinhForm") ThongTinGiaDinhForm thongTinGiaDinhForm,
			BindingResult bindingResult, HttpServletRequest request) {
		List<ThongTinGiaDinh> listThongTinGiaDinh = thongTinGiaDinhForm.getListThongTinGiaDinh();

		if (listThongTinGiaDinh != null && listThongTinGiaDinh.size() > 0) {
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
		}

		return "redirect:/ns/ho_so/";
	}
}
