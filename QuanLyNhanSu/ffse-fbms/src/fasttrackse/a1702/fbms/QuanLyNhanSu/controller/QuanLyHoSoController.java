package fasttrackse.a1702.fbms.QuanLyNhanSu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

@Controller
public class QuanLyHoSoController {

	@Autowired
	private QuanLyHoSoService quanLyHoSoService;

	@RequestMapping(value = "/{maPhongBan}/ho_so", method = RequestMethod.GET)
	public String listHoSo(@PathVariable("maPhongBan") String maPhongBan, Model model) {
		if (maPhongBan.equals("ns")) {
			model.addAttribute("listHoSo", this.quanLyHoSoService.getAllHoSo());
		} else {
			model.addAttribute("listHoSo", this.quanLyHoSoService.getHoSoByPhongBan(maPhongBan));
		}
		return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSo";
	}

	@RequestMapping(value = "/ns/ho_so/add", method = RequestMethod.GET)
	public String addHoSoNhanVien(Model model) {
		return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSoForm";
	}

	@RequestMapping(value = "/ns/ho_so/delete/{maNhanVien}", method = RequestMethod.GET)
	public String xoaHoSoNhanVien(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		this.quanLyHoSoService.deleteHoSoNhanVien(maNhanVien);
		return "redirect:/ns/ho_so/";
	}
}
