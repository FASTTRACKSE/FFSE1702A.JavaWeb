package fasttrackse.ffse1702a.fbms.controllers;

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
import org.springframework.web.bind.annotation.RequestParam;

import fasttrackse.ffse1702a.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.ffse1702a.fbms.entities.LyDoEntity;
import fasttrackse.ffse1702a.fbms.services.DonXinNghiService;

@Controller
public class NhanVien {

	@Autowired
	private DonXinNghiService Service;

	@RequestMapping(value = { "/danhsachcho", "/danhsachcho/",
			"/" }, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DanhSachChoPheDuyet(Model model) {
		model.addAttribute("danhSachXinNghi", Service.danhSachXinNghiChoDuyet());
		return "danh_sach";
	}

	@RequestMapping(value = { "/danhsachduyet",
			"/danhsachduyet/" }, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DanhSachPheDuyet(Model model) {
		model.addAttribute("donxinnghi", new DanhSachXinNghiEntity());
		model.addAttribute("danhSachXinNghi", Service.danhSachXinNghiDuyet());
		return "danh_sach";
	}

	@RequestMapping(value = { "/danhsachnhap",
			"/danhsachnhap/" }, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DanhSachNhap(Model model,
			@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		model.addAttribute("danhSachXinNghi", Service.danhSachXinNghiNhap(page));
		int lastPage = (int) Math.ceil(Service.totalRecords() / 5.0);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage", lastPage);
		return "danh_sach";
	}

	@RequestMapping(value = { "/donxinnghi",
			"/donxinnghi/" }, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DonXinNghi(Model model) {
		model.addAttribute("donxinnghi", new DanhSachXinNghiEntity());
		return "don_xin_nghi";
	}

	@RequestMapping(value = "/donxinnghi/choduyet", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String guiDon(@ModelAttribute("donxinnghi") @Valid DanhSachXinNghiEntity entity, BindingResult result) {

		if (entity.getMa_don() == null || entity.getMa_don() == 0) {
			// them moi don cho duyet
			if (result.hasErrors()) {
				return "don_xin_nghi";
			} else {
				Service.themDon(entity);
			}
		} else {
			// Cho phe duyet don
			if (result.hasErrors()) {
				return "don_xin_nghi";
			} else {
				Service.suaDon(entity);
			}
		}

		return "redirect:/danhsachcho";

	}

	@RequestMapping(value = "/donxinnghi/nhap", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String nhap(@ModelAttribute("donxinnghi") @Valid DanhSachXinNghiEntity entity, BindingResult result) {

		System.out.println("xxxx" + entity.getNgaynghientity());
		if (entity.getMa_don() == null || entity.getMa_don() == 0) {
			// them nhap
			if (result.hasErrors()) {
				return "don_xin_nghi";
			} else {
				Service.themNhap(entity);
			}
		} else {
			// sua nhap
			if (result.hasErrors()) {
				return "don_xin_nghi";
			} else {
				Service.suaNhap(entity);
			}
		}

		return "redirect:/danhsachnhap";

	}

	@RequestMapping(value = "/donxinnghi/duyet", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String duyet(@ModelAttribute("donxinnghi") @Valid DanhSachXinNghiEntity entity) {
		Service.duyet(entity);
		return "redirect:/danhsachcho";

	}

	@RequestMapping(value = "/donxinnghi/tuchoi", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String tuChoi(@ModelAttribute("donxinnghi") @Valid DanhSachXinNghiEntity entity) {
		Service.tuChoi(entity);
		return "redirect:/danhsachcho";

	}

	@RequestMapping(value = { "/danhsach/don/{id}" })
	public String xemDon(@PathVariable("id") int id, Model model) {
		model.addAttribute("donxinnghi", Service.layID(id));
		return "don_xin_nghi";
	}

	@RequestMapping(value = { "/danhsachnhap/don/{id}" })
	public String xemNhap(@PathVariable("id") int id, Model model) {
		model.addAttribute("donxinnghi", Service.layID(id));
		return "don_xin_nghi";
	}

	@RequestMapping("/danhsachnhap/xoadon/{id}")
	public String xoaSinhVien(@PathVariable("id") int id) {
		Service.xoaNhap(id);
		return "redirect:/danhsachnhap";
	}

	@ModelAttribute("lydo")
	public List<LyDoEntity> danhSachLyDo() {
		return this.Service.danhSachLyDo();
	}
}
