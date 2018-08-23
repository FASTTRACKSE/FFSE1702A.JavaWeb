package fasttrackse.a1702.fbms.taikhoan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.a1702.fbms.taikhoan.model.entities.TaiKhoan;
import fasttrackse.a1702.fbms.taikhoan.service.TaiKhoanService;

@Controller
@RequestMapping("/tai-khoan")
public class TaiKhoanController {
	@Autowired
	TaiKhoanService taiKhoanService;

	public TaiKhoanService getTaiKhoanService() {
		return taiKhoanService;
	}

	public void setTaiKhoanService(TaiKhoanService taiKhoanService) {
		this.taiKhoanService = taiKhoanService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listTaiKhoan(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = taiKhoanService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listTaiKhoan", taiKhoanService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		return "taikhoan/list";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("taiKhoan", new TaiKhoan());
		return "taikhoan/add_form";
	}

	@RequestMapping(value = "/them-moi/luu", method = RequestMethod.POST)
	public String doAdd(Model model, @ModelAttribute("taiKhoan") TaiKhoan cn,
			final RedirectAttributes redirectAttributes) {
		try {
			taiKhoanService.addNew(cn);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/tai-khoan/danh-sach";
	}

	@RequestMapping(value = "/sua/{code}", method = RequestMethod.GET)
	public String editForm(@PathVariable("code") String code, Model model) {
//		model.addAttribute("taiKhoan", taiKhoanService.getChucNangByCode(code));
		return "taikhoan/edit_form";
	}

	@RequestMapping(value = "/sua/luu", method = RequestMethod.POST)
	public String doEdit(Model model, @ModelAttribute("taiKhoan") TaiKhoan cn,
			final RedirectAttributes redirectAttributes) {
		try {
			taiKhoanService.update(cn);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/tai-khoan/danh-sach";
	}

	@RequestMapping(value = "/kich-hoat/{code}", method = RequestMethod.GET)
	public String active(@PathVariable("code") String ma_chuc_nang, final RedirectAttributes redirectAttributes) {
		try {
			taiKhoanService.active(ma_chuc_nang);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/tai-khoan/danh-sach";
	}

	@RequestMapping(value = "/xoa/{code}", method = RequestMethod.GET)
	public String delete(@PathVariable("code") String ma_chuc_nang, final RedirectAttributes redirectAttributes) {
		try {
			taiKhoanService.delete(ma_chuc_nang);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/tai-khoan/danh-sach";
	}
}
