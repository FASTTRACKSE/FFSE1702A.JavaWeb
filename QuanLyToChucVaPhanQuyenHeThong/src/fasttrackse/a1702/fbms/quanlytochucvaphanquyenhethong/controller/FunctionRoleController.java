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

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.FunctionRole;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucDanhService;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucNangService;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.FunctionRoleService;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.PhongBanService;

@Controller
@RequestMapping("/function-role")
public class FunctionRoleController {

	@Autowired
	FunctionRoleService functionRoleService;
	
	@Autowired
	ChucNangService chucNangService;

	@Autowired
	ChucDanhService chucDanhService;
	
	@Autowired
	PhongBanService phongBanService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listPhongBan(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = functionRoleService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listFunctionRole", functionRoleService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		return "function_role/list";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("functionRole", new FunctionRole());
		model.addAttribute("listPhongBan", phongBanService.findAll());
		model.addAttribute("listChucNang", chucNangService.findAll());
		model.addAttribute("listChucDanh", chucDanhService.findAll());
		return "function_role/add_form";
	}

	@RequestMapping(value = "/them-moi", method = RequestMethod.POST)
	public String doAdd(Model model, @ModelAttribute("functionRole") FunctionRole pb,
			final RedirectAttributes redirectAttributes) {
		try {
			functionRoleService.addNew(pb);;
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/function-role/";
	}

	@RequestMapping(value = "/sua/{id}", method = RequestMethod.GET)
	public String editForm(@PathVariable("id") int id, Model model) {
		model.addAttribute("functionRole", functionRoleService.findById(id));
		model.addAttribute("listPhongBan", phongBanService.findAll());
		model.addAttribute("listChucNang", chucNangService.findAll());
		model.addAttribute("listChucDanh", chucDanhService.findAll());
		return "function_role/edit_form";
	}

	@RequestMapping(value = "/sua/luu", method = RequestMethod.POST)
	public String doEdit(Model model, @ModelAttribute("functionRole") FunctionRole pb,
			final RedirectAttributes redirectAttributes) {
		try {
			functionRoleService.update(pb);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/function-role/";
	}

	@RequestMapping(value = "/xoa/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id, final RedirectAttributes redirectAttributes) {
		try {
			functionRoleService.delete(id);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/function-role/";
	}
}
