package fasttrackse.a1702.fbms.chucdanh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.a1702.fbms.chucdanh.model.entities.ChucDanh;
import fasttrackse.a1702.fbms.chucdanh.service.ChucDanhService;

@Controller
@RequestMapping("/chuc-danh")
public class ChucDanhController {

	@Autowired
	ChucDanhService chucDanhService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listPhongBan(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = chucDanhService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listChucDanh", chucDanhService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		return "chucdanh/list";
	}
	
	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("chucDanh", new ChucDanh());
		return "chucdanh/add_form";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.POST)
	public String doAdd(Model model, @ModelAttribute("chucDanh") ChucDanh cd,
			final RedirectAttributes redirectAttributes) {
		try {
			chucDanhService.addNew(cd);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-danh/";
	}
	
	@RequestMapping(value = "/sua/{maChucDanh}", method = RequestMethod.GET)
	public String editForm(@PathVariable("maChucDanh") String maChucDanh, Model model) {
		model.addAttribute("chucDanh", chucDanhService.findByMaChucDanh(maChucDanh));
		return "chucdanh/edit_form";
	}

	@RequestMapping(value = "/sua/luu", method = RequestMethod.POST)
	public String doEdit(Model model, @ModelAttribute("chucDanh") ChucDanh cd,
			final RedirectAttributes redirectAttributes) {
		try {
			chucDanhService.update(cd);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-danh/";
	}
	
	@RequestMapping(value = "/xoa/{maChucDanh}", method = RequestMethod.GET)
	public String delete(@PathVariable("maChucDanh") String maChucDanh, final RedirectAttributes redirectAttributes) {
		try {
			chucDanhService.delete(maChucDanh);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-danh/";
	}
}
