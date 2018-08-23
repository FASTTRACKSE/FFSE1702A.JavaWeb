package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.PhongBan;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.PhongBanService;

@Controller
@RequestMapping("/phong-ban")
public class PhongBanController {

	@Autowired
	PhongBanService phongBanService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listPhongBan(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = phongBanService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listPhongBan", phongBanService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		return "phongban/list";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("phongBan", new PhongBan());
		return "phongban/add_form";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.POST)
	public String doAdd(Model model, @ModelAttribute("phongBan") PhongBan pb,
			final RedirectAttributes redirectAttributes) {
		try {
			phongBanService.addNew(pb);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/phong-ban/";
	}

	@RequestMapping(value = "/sua/{maPhongBan}", method = RequestMethod.GET)
	public String editForm(@PathVariable("maPhongBan") String maPhongBan, Model model) {
		model.addAttribute("phongBan", phongBanService.findByMaPhongBan(maPhongBan));
		return "phongban/edit_form";
	}

	@RequestMapping(value = "/sua/luu", method = RequestMethod.POST)
	public String doEdit(Model model, @ModelAttribute("phongBan") PhongBan pb,
			final RedirectAttributes redirectAttributes) {
		try {
			phongBanService.update(pb);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/phong-ban/";
	}

	@RequestMapping(value = "/xoa/{maPhongBan}", method = RequestMethod.GET)
	public String delete(@PathVariable("maPhongBan") String maPhongBan, final RedirectAttributes redirectAttributes) {
		try {
			phongBanService.delete(maPhongBan);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/phong-ban/";
	}
}
