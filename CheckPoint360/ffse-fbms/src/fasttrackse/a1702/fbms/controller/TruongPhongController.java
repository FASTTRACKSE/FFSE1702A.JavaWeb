
package fasttrackse.a1702.fbms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.model.entity.DanhGiaNgangHang;
import fasttrackse.a1702.fbms.model.entity.TruongPhong;
import fasttrackse.a1702.fbms.model.entity.PhanCong;
import fasttrackse.a1702.fbms.service.DanhGiaNgangHangService;
import fasttrackse.a1702.fbms.service.PhanCongDanhGiaService;
import fasttrackse.a1702.fbms.service.TruongPhongDanhGiaService;

@Controller
public class TruongPhongController {


	/* Hiển thị form Phân công đánh giá của Trưởng Phòng */
	@Autowired
	private PhanCongDanhGiaService phanCongDanhGiaService;

	@RequestMapping(value = "/phancongdanhgia")
	public String PhanCong(Model model, @ModelAttribute("phancong") PhanCong s) {
		model.addAttribute("DanhSachNhanVien", new DanhGiaNgangHang());
		model.addAttribute("DanhSachNhanVien", this.phanCongDanhGiaService.DSNhanVien());
		return "formphancong";
	}

	/* Hiển thị form đánh giá của Trưởng Phòng */
	@Autowired
	private DanhGiaNgangHangService danhGiaNgangHangService;

	@RequestMapping(value = "/truongphongdanhgia", method = RequestMethod.GET)
	public String DanhSach(Model model, @ModelAttribute("danhgia") TruongPhong s) {
		model.addAttribute("DanhSach", new DanhGiaNgangHang());
		model.addAttribute("DanhSach", this.danhGiaNgangHangService.DanhSach());
		return "truongphong";
	}

	/* Submit form đánh giá của Trưởng Phòng */
	@Autowired
	private TruongPhongDanhGiaService truongPhongDanhGiaService;

	@RequestMapping(value = "/truongphongsubmit", method = { RequestMethod.POST })
	public String danhGia(@ModelAttribute("danhgia") TruongPhong s) {
		this.truongPhongDanhGiaService.luuDanhGia(s);
		return "truongphong";
	}

	@RequestMapping(value = "/truongphongsubmit", method = { RequestMethod.GET })
	public String danhGia(ModelMap mm) {
		mm.put("danhgia", new TruongPhong());
		return "truongphong";

	}
}