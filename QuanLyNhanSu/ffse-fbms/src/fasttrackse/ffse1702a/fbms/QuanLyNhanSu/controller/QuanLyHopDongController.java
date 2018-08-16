package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HopDong;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.LoaiHopDong;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.LoaiHopDongService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHopDongService;

@Controller
public class QuanLyHopDongController {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;

	@Autowired
	private LoaiHopDongService loaiHopDongService;
	@Autowired
	private QuanLyHopDongService quanLyHopDongService;

	@RequestMapping(value = "/ns/hop_dong/edit/{maNhanVien}", method = RequestMethod.GET)
	public String editQuanLyHopDong(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);

		model.addAttribute("hoSoNhanVien", hsnv);
		model.addAttribute("hopDong", new HopDong());
		model.addAttribute("loaiHopDong", new LoaiHopDong());
		model.addAttribute("listLoaiHopDong", this.loaiHopDongService.listLoaiHopDong());
		return "QuanLyNhanSu/QuanLyHopDong/QuanLyHopDongForm";

	}

	@RequestMapping(value = "/ns/hop_dong/save", method = RequestMethod.POST)
	public String addHopDong(@ModelAttribute("hopDong") HopDong hd) {
		System.out.println(hd);

		if (hd.getMaHopDong() == 0) {
			this.quanLyHopDongService.addHopDong(hd);
		} else {
			this.quanLyHopDongService.updateHopDong(hd);
		}

		return "redirect:/ns/hop_dong/edit/{maNhanVien}";

	}

}
