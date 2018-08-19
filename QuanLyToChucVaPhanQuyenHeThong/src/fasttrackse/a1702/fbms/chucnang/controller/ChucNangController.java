package fasttrackse.a1702.fbms.chucnang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.a1702.fbms.chucnang.model.entities.ChucNang;
import fasttrackse.a1702.fbms.chucnang.service.ChucNangService;

@Controller
@RequestMapping("/chuc-nang")
public class ChucNangController {

	@Autowired
	ChucNangService cnService;

	protected ChucNangService getcnService() {
		return cnService;
	}

	protected void setcnService(ChucNangService cnService) {
		this.cnService = cnService;
	}

	@RequestMapping(value = "/danh-sach", method = RequestMethod.GET)
	public String danhSachChucNang(Model model, @RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = cnService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listChucNang", cnService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
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
			cnService.save(cn);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}

	@RequestMapping(value = "/sua/{code}", method = RequestMethod.GET)
	public String editForm(@PathVariable("code") String code, Model model) {
		model.addAttribute("chucNang", cnService.getChucNangByCode(code));
		return "chucnang/edit_form";
	}

	@RequestMapping(value = "/sua/luu", method = RequestMethod.POST)
	public String doEdit(Model model, @ModelAttribute("chucNang") ChucNang cn,
			final RedirectAttributes redirectAttributes) {
		try {
			cnService.update(cn);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}

	@RequestMapping(value = "/kich-hoat/{code}", method = RequestMethod.GET)
	public String active(@PathVariable("code") String ma_chuc_nang, final RedirectAttributes redirectAttributes) {
		try {
			cnService.active(ma_chuc_nang);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}
	
	@RequestMapping(value = "/xoa/{code}", method = RequestMethod.GET)
	public String delete(@PathVariable("code") String ma_chuc_nang, final RedirectAttributes redirectAttributes) {
		try {
			cnService.delete(ma_chuc_nang);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}
}
