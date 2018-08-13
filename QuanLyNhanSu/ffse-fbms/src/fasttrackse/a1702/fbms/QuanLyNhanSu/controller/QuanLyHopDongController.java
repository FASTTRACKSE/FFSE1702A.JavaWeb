package fasttrackse.a1702.fbms.QuanLyNhanSu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HopDong;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

@Controller
public class QuanLyHopDongController {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;

	@RequestMapping(value = "/ns/ho_so/hop_dong/edit/{maNhanVien}", method = RequestMethod.GET)
	public String editQuanLyHopDong(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);

		model.addAttribute("hoSoNhanVien", hsnv);
		model.addAttribute("hopDong", new HopDong());
		return "QuanLyNhanSu/QuanLyHopDong/QuanLyHopDongForm";
	
	}
}
