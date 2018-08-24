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

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucNangPhongBan;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucDanhService;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucNangPhongBanService;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucNangService;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.PhongBanService;

@Controller
@RequestMapping("/chuc-nang-phong-ban")
public class ChucNangPhongBanController {
	@Autowired
	ChucNangPhongBanService chucNangPhongBanService;

	@Autowired
	ChucNangService chucNangService;

	@Autowired
	ChucDanhService chucDanhService;

	@Autowired
	PhongBanService phongBanService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listChucNangPhongBan(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = chucNangPhongBanService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listChucNangPhongBan",
				chucNangPhongBanService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		return "chucnangphongban/list";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("chucNangPhongBan", new ChucNangPhongBan());
		model.addAttribute("listPhongBan", phongBanService.findAll());
		model.addAttribute("listChucNang", chucNangService.findAll());
		model.addAttribute("listChucDanh", chucDanhService.findAll());
		return "chucnangphongban/add_form";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.POST)
	public String doAdd(Model model, @ModelAttribute("chucNangPhongBan") ChucNangPhongBan pb,
			final RedirectAttributes redirectAttributes) {
		try {
			chucNangPhongBanService.addNew(pb);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang-phong-ban/";
	}

	@RequestMapping(value = "/sua/{id}", method = RequestMethod.GET)
	public String editForm(@PathVariable("id") int id, Model model) {
		model.addAttribute("chucNangPhongBan", chucNangPhongBanService.findById(id));
		model.addAttribute("listPhongBan", phongBanService.findAll());
		model.addAttribute("listChucNang", chucNangService.findAll());
		model.addAttribute("listChucDanh", chucDanhService.findAll());
		return "chucnangphongban/edit_form";
	}

	@RequestMapping(value = "/sua/luu", method = RequestMethod.POST)
	public String doEdit(Model model, @ModelAttribute("chucNangPhongBan") ChucNangPhongBan pb,
			final RedirectAttributes redirectAttributes) {
		try {
			chucNangPhongBanService.update(pb);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang-phong-ban/";
	}

	@RequestMapping(value = "/xoa/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id, final RedirectAttributes redirectAttributes) {
		try {
			chucNangPhongBanService.delete(id);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/function-role/";
	}
}
