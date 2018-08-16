package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

@Controller
public class ThongTinKinhNghiemController {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;

	@RequestMapping(value = "ns/ho_so/kinh_nghiem/{maNhanVien}", method = RequestMethod.GET)
	public String thongtinKinhNghiem(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
		model.addAttribute("hoSoNhanVien", hsnv);
		return "QuanLyNhanSu/QuanLyHoSo/ThongTinKinhNghiemForm";
	}
}
