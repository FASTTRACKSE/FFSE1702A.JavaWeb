package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.controller;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucNangPhongBanService;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucNangService;

@Controller
@RequestMapping("/chuc-nang-phong-ban")
public class ChucNangPhongBanController {
	@Autowired
	ChucNangPhongBanService chucNangPhongBanService;
	
	@Autowired
	ChucNangService chucNangService;

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String listChucNangPhongBan(Model model, @RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = chucNangPhongBanService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listChucNangPhongBan", chucNangPhongBanService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		return "chucnangphongban/list";
	}
	
	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("listChucNang", chucNangService.findAll());
		return "chucnangphongban/add_form";
	}
	
	@RequestMapping(value="/them-moi", method = RequestMethod.POST)
	public String doAdd(Model model,@Valid BindingResult bindingResult, @RequestParam("roles") String[] roles, @RequestParam("_maPhongBan") String _maPhongBan,
			final RedirectAttributes redirectAttributes) {
		try {
			if (bindingResult.hasErrors()) {
				model.addAttribute("error","Có lỗi đã xảy ra. Vui lòng thử lại");
				return "/chuc-nang-phong-ban/them-moi";
			}
			List<String> arrayList = Arrays.asList(roles);
			chucNangPhongBanService.addNew(_maPhongBan, arrayList);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang-phong-ban/";
	}
	
	
	@RequestMapping(value = "/sua/{maPhongBan}", method = RequestMethod.GET)
	public String editForm(@PathVariable("maPhongBan") String maPhongBan, Model model) {
		model.addAttribute("maPhongBan", maPhongBan);
		model.addAttribute("ChucNangPhongBan", chucNangPhongBanService.getMaChucNangByMaPhongBan(maPhongBan));
		model.addAttribute("listChucNang", chucNangService.findAll());
		return "chucnangphongban/edit_form";
	}
	
	@RequestMapping(value = "/sua/{maPhongBan}", method = RequestMethod.POST)
	public String doEdit(Model model, @RequestParam("roles") String[] roles, @RequestParam("_maPhongBan") String _maPhongBan,
			final RedirectAttributes redirectAttributes) {
		try {
			List<String> arrayList = Arrays.asList(roles);
			chucNangPhongBanService.update(_maPhongBan, arrayList);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang-phong-ban/";
	}
	
	@RequestMapping(value = "/xoa/{maPhongBan}", method = RequestMethod.GET)
	public String delete(@PathVariable("maPhongBan") String maPhongBan, final RedirectAttributes redirectAttributes) {
		try {
			chucNangPhongBanService.delete(maPhongBan);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}
}
