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
	
	@RequestMapping(value = "/{maPhongBan}/hop_dong", method = RequestMethod.GET)
	public String listHopDong(@PathVariable("maPhongBan") String maPhongBan,Model model) {
		if (maPhongBan.equals("ns")) {
			model.addAttribute("listHopDong", this.quanLyHopDongService.getAllHopDong());
		} else {
			model.addAttribute("listHopDong", this.quanLyHopDongService.getHopDongByPhongBan(maPhongBan));
		}
		
		return "QuanLyNhanSu/QuanLyHopDong/HopDong";
	}


	@RequestMapping(value = "/ns/hop_dong/edit/{maNhanVien}", method = RequestMethod.GET)
	public String editQuanLyHopDong(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
		
		model.addAttribute("hoSoNhanVien", hsnv);
		HopDong hopDong = new HopDong();
		hopDong.setMaHopDong(Integer.valueOf(this.quanLyHopDongService.getAutoId()));
		List<HopDong> listHD = hsnv.getHopDongs();
		// nếu nv có hợp đồng
		if (listHD.size() != 0) {
			// lấy cái mới nhất
			HopDong hd = listHD.get(listHD.size()-1);
			if (hd.getTrangThai() == 1) {
				hopDong = hd;
				model.addAttribute("edit", "true");
			}
		}
		model.addAttribute("hopDong", hopDong);
		model.addAttribute("loaiHopDong", new LoaiHopDong());
		model.addAttribute("listLoaiHopDong", this.loaiHopDongService.listLoaiHopDong());
		return "QuanLyNhanSu/QuanLyHopDong/QuanLyHopDongForm";

	}
	
	@RequestMapping(value = "/ns/hop_dong/xem_hop_dong/{maNhanVien}", method = RequestMethod.GET)
	public String viewQuanLyHopDong(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
		
		model.addAttribute("hoSoNhanVien", hsnv);
		HopDong hopDong = new HopDong();
		hopDong.setMaHopDong(Integer.valueOf(this.quanLyHopDongService.getAutoId()));
		List<HopDong> listHD = hsnv.getHopDongs();
		// nếu nv có hợp đồng
		if (listHD.size() != 0) {
			// lấy cái mới nhất
			HopDong hd = listHD.get(listHD.size()-1);
			if (hd.getTrangThai() == 1) {
				hopDong = hd;
				model.addAttribute("edit", "true");
			}
		}
		model.addAttribute("hopDong", hopDong);
		model.addAttribute("loaiHopDong", new LoaiHopDong());
		model.addAttribute("listLoaiHopDong", this.loaiHopDongService.listLoaiHopDong());
		return "QuanLyNhanSu/QuanLyHopDong/View/QuanLyHopDongView";

	}

	@RequestMapping(value = "/ns/hop_dong/save", method = RequestMethod.POST)
	public String addHopDong(@Valid @ModelAttribute("hopDong") HopDong hd, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			int maNhanVien = hd.getHoSoNhanVien().getMaNhanVien();
			HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
			hd.setMaHopDong(Integer.valueOf(this.quanLyHopDongService.getAutoId()));
			model.addAttribute("hoSoNhanVien", hsnv);
			return "QuanLyNhanSu/QuanLyHopDong/QuanLyHopDongForm";
		}
		if (hd.getMaHopDong() == 0) {
			this.quanLyHopDongService.addHopDong(hd);
		} else {
			this.quanLyHopDongService.updateHopDong(hd);
		}
		String maNhanVien = String.valueOf(hd.getHoSoNhanVien().getMaNhanVien());
		return "redirect:/ns/hop_dong/edit/" + maNhanVien;

	}

}
