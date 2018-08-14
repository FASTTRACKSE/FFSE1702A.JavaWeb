package fasttrackse.a1702.fbms.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.a1702.fbms.entities.LyDoEntity;
import fasttrackse.a1702.fbms.services.DonXinNghiService;

@Controller
public class NhanVien {

	@Autowired
	private DonXinNghiService Service;

	@RequestMapping(value = { "/danhsachcho", "/danhsachcho/","/"}, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DanhSachChoPheDuyet(Model model) {
		model.addAttribute("danhSachXinNghi", Service.danhSachXinNghiChoDuyet());
		return "danh_sach";
	}

	@RequestMapping(value = { "/danhsachduyet", "/danhsachduyet/"}, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DanhSachPheDuyet(Model model) {
		model.addAttribute("danhSachXinNghi", Service.danhSachXinNghiDuyet());
		return "danh_sach";
	}

	@RequestMapping(value = { "/danhsachnhap", "/danhsachnhap/"}, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DanhSachNhap(Model model) {
		model.addAttribute("danhSachXinNghi", Service.danhSachXinNghiNhap());
		return "danh_sach";
	}

	@RequestMapping(value = {
			"/donxinnghi","/donxinnghi/" }, method = RequestMethod.GET, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String DonXinNghi(Model model) {
		model.addAttribute("donxinnghi", new DanhSachXinNghiEntity());
		return "don_xin_nghi";
	}

	@RequestMapping(value = "/donxinnghi/choduyet", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String guiDon(@ModelAttribute("donxinnghi") @Valid DanhSachXinNghiEntity entity) {

		if (entity.getMa_don() == null || entity.getMa_don() == 0) {
			// them moi don cho duyet
			Service.themDon(entity);
		}else {
			// Cho phe duyet don
			Service.suaDon(entity);
		}
		
		return "redirect:/danhsachcho";

	}
	
	@RequestMapping(value = "/donxinnghi/nhap", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String nhap(@ModelAttribute("donxinnghi") @Valid DanhSachXinNghiEntity entity) {

		if (entity.getMa_don() == null || entity.getMa_don() == 0) {
			// them nhap
			Service.themNhap(entity);
		} else {
			// sua nhap
			Service.suaNhap(entity);
		}

		return "redirect:/danhsachnhap";

	}

	@RequestMapping(value = {"/danhsach/don/{id}"})
	public String xemDon(@PathVariable("id") int id, Model model) {
		model.addAttribute("donxinnghi", Service.layID(id));
		return "don_xin_nghi";
	}
	
	@RequestMapping(value = {"/danhsachnhap/don/{id}"})
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
