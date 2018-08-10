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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ChucDanh;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.PhongBan;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.QuocTich;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.TinhTrangHonNhan;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyChucDanhService;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyPhongBanService;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuocTichService;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.TinhTrangHonNhanService;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.UploadImageService;

@Controller
@SessionAttributes({ "phongBan", "chucDanh", "quocTich", "tinhTrangHonNhan" })
public class QuanLyHoSoController {

	@Autowired
	private QuanLyHoSoService quanLyHoSoService;

	@Autowired
	private QuanLyPhongBanService quanLyPhongBanService;

	@Autowired
	private QuanLyChucDanhService quanLyChucDanhService;

	@Autowired
	private QuocTichService quocTichService;

	@Autowired
	private TinhTrangHonNhanService tinhTrangHonNhanService;

	@Autowired
	private UploadImageService uploadImageService;

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

		model.addAttribute("hoSoNhanVien", new HoSoNhanVien());
		return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSoForm";
	}

	@RequestMapping(value = "/ns/ho_so/edit/{maNhanVien}", method = RequestMethod.GET)
	public String editHoSoNhanVien(@PathVariable("maNhanVien") int maNhanVien, Model model) {

		model.addAttribute("hoSoNhanVien", this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien));
		return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSoForm";
	}

	@RequestMapping(value = "/ns/ho_so/save", method = RequestMethod.POST)
	public String saveHoSoNhanVien(@ModelAttribute("hoSoNhanVien") HoSoNhanVien hsnv, BindingResult bindingResult,
			@RequestParam(value = "image", required = false) MultipartFile image, HttpServletRequest request) {

		String referer = request.getHeader("Referer");
		String filename = uploadImageService.checkImage(image, bindingResult, referer);
		if (filename != null && filename.contains("redirect")) {
			return filename;
		}
		if (hsnv.getMaNhanVien() == 0) {
			// thêm

		} else {
			// sửa
			if (filename != null) {
				hsnv.setAnhDaiDien(filename);
			}
			this.quanLyHoSoService.updateHoSoNhanVien(hsnv);
		}

		return "redirect:/ns/ho_so/";
	}

	@RequestMapping(value = "/ns/ho_so/delete/{maNhanVien}", method = RequestMethod.GET)
	public String xoaHoSoNhanVien(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		this.quanLyHoSoService.deleteHoSoNhanVien(maNhanVien);
		return "redirect:/ns/ho_so/";
	}

	@ModelAttribute("phongBan")
	public List<PhongBan> initializePhongBan() {
		return this.quanLyPhongBanService.listPhongBan();
	}

	@ModelAttribute("chucDanh")
	public List<ChucDanh> initializeChucDanh() {
		return this.quanLyChucDanhService.listChucDanh();
	}

	@ModelAttribute("quocTich")
	public List<QuocTich> initializeQuocTich() {
		return this.quocTichService.getAllQuocTich();
	}

	@ModelAttribute("tinhTrangHonNhan")
	public List<TinhTrangHonNhan> initializeTinhTrangHonNhan() {
		return this.tinhTrangHonNhanService.getAllTinhTrangHonNhan();
	}
}
