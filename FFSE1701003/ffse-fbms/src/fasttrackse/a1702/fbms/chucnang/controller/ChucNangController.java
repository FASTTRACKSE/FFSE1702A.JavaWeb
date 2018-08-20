package fasttrackse.a1702.fbms.chucnang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.a1702.fbms.chucnang.model.dao.ChucNangDao;
import fasttrackse.a1702.fbms.chucnang.model.entities.ChucNang;

@Controller
@RequestMapping("/chuc-nang")
public class ChucNangController {

	@Autowired
	ChucNangDao cnDao;

	protected ChucNangDao getCnDao() {
		return cnDao;
	}

	protected void setCnDao(ChucNangDao cnDao) {
		this.cnDao = cnDao;
	}

	@RequestMapping(value = "/danh-sach")
	public String danhSachChucNang(Model model) {
		List<ChucNang> dsChucNang = cnDao.list();
		// model.asMap().get("messageSuccess");
		// model.asMap().get("messageError");
		model.addAttribute("listChucNang", dsChucNang);
		return "chucnang/list";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("chucNang", new ChucNang());
		return "chucnang/add_form";
	}

	@RequestMapping(value = "/them-moi/luu", method = RequestMethod.POST)
	public String doAdd(Model model, @ModelAttribute("chucNang") ChucNang cn,
			final RedirectAttributes redirectAttributes) {
		try {
			cnDao.save(cn);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}

	@RequestMapping(value = "/sua/{code}", method = RequestMethod.GET)
	public String editForm(@PathVariable("code") String code, Model model) {
		model.addAttribute("chucNang", cnDao.getChucNangByCode(code));
		return "chucnang/edit_form";
	}
	
	@RequestMapping(value = "/sua/luu", method = RequestMethod.POST)
	public String doEdit(Model model, @ModelAttribute("chucNang") ChucNang cn,
			final RedirectAttributes redirectAttributes) {
		try {
			cnDao.update(cn);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi! Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}

	@RequestMapping(value = "/chuc-nang/thong-bao", method = RequestMethod.GET)
	public String active() {
		return "chucnang/showMessage";
	}

}
