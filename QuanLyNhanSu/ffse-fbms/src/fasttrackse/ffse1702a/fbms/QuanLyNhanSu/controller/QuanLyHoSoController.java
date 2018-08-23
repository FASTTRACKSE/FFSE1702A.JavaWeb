package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.ChucDanh;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.PhongBan;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.QuocTich;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.TinhTrangHonNhan;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.DatatableService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyChucDanhService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyPhongBanService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuocTichService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.TinhTrangHonNhanService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.UploadImageService;

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
	@Autowired
	private DatatableService datatableService;

	@RequestMapping(value = "/{maPhongBan}/ho_so", method = RequestMethod.GET)
	public String viewHoSo(@PathVariable("maPhongBan") String maPhongBan, Model model) {
		model.addAttribute("maPhongBan", maPhongBan);
		return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSo";
	}

	@RequestMapping(value = "/{maPhongBan}/getListHoSo", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String getListHoSo(@PathVariable("maPhongBan") String maPhongBan, Model model, HttpServletRequest request) {

		int iDisplayStart = Integer.parseInt(request.getParameter("iDisplayStart"));
		int iDisplayLength = Integer.parseInt(request.getParameter("iDisplayLength"));
		String sql = this.quanLyHoSoService.getSQL(request, maPhongBan);
		List<HoSoNhanVien> listHoSo = this.quanLyHoSoService.getAllHoSo(iDisplayStart, iDisplayLength, sql);

		String recordsTotal = this.quanLyHoSoService.getRecordsTotal(maPhongBan);
		String recordsFiltered = this.quanLyHoSoService.getRecordsFiltered(sql);
		String json = this.datatableService.getJsonHoSo(recordsTotal, recordsFiltered, listHoSo);

		return json;
	}

	@RequestMapping(value = "/ns/ho_so/add", method = RequestMethod.GET)
	public String addHoSoNhanVien(Model model) {
		HoSoNhanVien hsnv = new HoSoNhanVien();
		hsnv.setMaNhanVien(Integer.valueOf(this.quanLyHoSoService.getAutoId()));
		model.addAttribute("hoSoNhanVien", hsnv);
		model.addAttribute("add", "add");

		return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSoForm";
	}

	@RequestMapping(value = "/ns/ho_so/edit/{maNhanVien}", method = RequestMethod.GET)
	public String editHoSoNhanVien(@PathVariable("maNhanVien") int maNhanVien, Model model) {

		model.addAttribute("hoSoNhanVien", this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien));
		return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSoForm";
	}

	@RequestMapping(value = "/ns/ho_so/save", method = RequestMethod.POST)
	public String saveHoSoNhanVien(@ModelAttribute("hoSoNhanVien") @Valid HoSoNhanVien hsnv,
			BindingResult bindingResult, @RequestParam(value = "image", required = false) MultipartFile image,
			HttpServletRequest request, Model model, RedirectAttributes redirectAttributes) {

		int maNhanVien = hsnv.getMaNhanVien();
		boolean addAction = (maNhanVien == 0);
		int autoID = Integer.valueOf(this.quanLyHoSoService.getAutoId());
		String filename = uploadImageService.checkImage(image, bindingResult);

		// check lỗi form + ảnh
		if (bindingResult.hasErrors() || (filename != null && filename.equals("err"))) {
			System.out.println(hsnv);
			if (addAction) {
				model.addAttribute("add", "TRUE");
				hsnv.setMaNhanVien(autoID);
				// add action - chưa thêm ảnh
				if (filename == null) {
					model.addAttribute("anhDaiDienErrors", "anhDaiDienErrors");
				}
			}
			// lỗi định dạng ảnh
			if (filename != null && filename.equals("err")) {
				model.addAttribute("anhDaiDienErrors", "anhDaiDienErrors");
			}
			return "QuanLyNhanSu/QuanLyHoSo/QuanLyHoSoForm";
		}

		if (addAction) {
			// thêm
			hsnv.setAnhDaiDien(filename);
			this.quanLyHoSoService.addHoSoNhanVien(hsnv);
			redirectAttributes.addFlashAttribute("ADD_SUCCESS_ID", String.format("%05d", maNhanVien));
		} else {
			// sửa
			if (filename != null) {
				hsnv.setAnhDaiDien(filename);
			}
			this.quanLyHoSoService.updateHoSoNhanVien(hsnv);
			redirectAttributes.addFlashAttribute("UPDATE_SUCCESS_ID", String.format("%05d", maNhanVien));
			return "redirect:/ns/ho_so/edit/" + maNhanVien;
		}

		redirectAttributes.addFlashAttribute("SUCCESS", "TRUE");
		return "redirect:/ns/ho_so/";
	}

	@RequestMapping(value = "/ns/ho_so/delete/{maNhanVien}", method = RequestMethod.GET)
	public String xoaHoSoNhanVien(@PathVariable("maNhanVien") int maNhanVien, Model model,
			RedirectAttributes redirectAttributes) {

		this.quanLyHoSoService.deleteHoSoNhanVien(maNhanVien);
		redirectAttributes.addFlashAttribute("SUCCESS", "TRUE");
		redirectAttributes.addFlashAttribute("DELETE_SUCCESS_ID", String.format("%05d", maNhanVien));

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
