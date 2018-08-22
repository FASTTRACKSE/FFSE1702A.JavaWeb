package fasttrackse.a1702.fbms.chucnangchucdanh.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.a1702.fbms.chucnang.service.ChucNangService;
import fasttrackse.a1702.fbms.chucnangchucdanh.service.ChucNangChucDanhService;

@Controller
@RequestMapping("/chuc-nang-chuc-danh")
public class ChucNangChucDanhController {
	@Autowired
	ChucNangChucDanhService chucNangChucDanhService;
	
	@Autowired
	ChucNangService chucNangService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String listChucNangChucDanh(Model model, @RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		int totalRecords = chucNangChucDanhService.findAll().size();
		int recordsPerPage = 10;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listChucNangChucDanh", chucNangChucDanhService.findAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		return "chucnangchucdanh/list";
	}
	
	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("listChucNang", chucNangService.findAll());
		return "chucnangchucdanh/add_form";
	}
	
	@RequestMapping(value="/them-moi", method = RequestMethod.POST)
	public String doAdd(Model model, @RequestParam("roles") String[] roles, @RequestParam("_maChucDanh") String _maChucDanh,
			final RedirectAttributes redirectAttributes) {
		try {
//			if (bindingResult.hasErrors()) {
//				model.addAttribute("error","Có lỗi đã xảy ra. Vui lòng thử lại");
//				return "/chuc-nang-chuc-danh/them-moi";
//			}
			List<String> arrayList = Arrays.asList(roles);
			chucNangChucDanhService.addNew(_maChucDanh, arrayList);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thêm mới thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang-chuc-danh/";
	}
	
	@RequestMapping(value = "/sua/{maChucDanh}", method = RequestMethod.GET)
	public String editForm(@PathVariable("maChucDanh") String maChucDanh, Model model) {
		model.addAttribute("maChucDanh", maChucDanh);
		model.addAttribute("ChucNangChucDanh", chucNangChucDanhService.getMaChucNangByMaChucDanh(maChucDanh));
		model.addAttribute("listChucNang", chucNangService.findAll());
		return "chucnangchucdanh/edit_form";
	}
	
	@RequestMapping(value = "/sua/{maChucDanh}", method = RequestMethod.POST)
	public String doEdit(Model model, @RequestParam("roles") String[] roles, @RequestParam("_maChucDanh") String _maChucDanh,
			final RedirectAttributes redirectAttributes) {
		try {
			List<String> arrayList = Arrays.asList(roles);
			chucNangChucDanhService.update(_maChucDanh, arrayList);
			redirectAttributes.addFlashAttribute("messageSuccess", "Thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang-chuc-danh/";
	}
	
	@RequestMapping(value = "/xoa/{maChucDanh}", method = RequestMethod.GET)
	public String delete(@PathVariable("maChucDanh") String maChucDanh, final RedirectAttributes redirectAttributes) {
		try {
			chucNangChucDanhService.delete(maChucDanh);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/chuc-nang/danh-sach";
	}
	
}
