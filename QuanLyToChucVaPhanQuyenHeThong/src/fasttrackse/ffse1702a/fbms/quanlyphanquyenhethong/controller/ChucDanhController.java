package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.ChucDanh;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.ChucDanhService;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.DatatableService;

@Controller
@RequestMapping("/quanlyphanquyen/quan-ly-chuc-danh")
public class ChucDanhController {

	@Autowired
	private ChucDanhService chucDanhService;
	
	@Autowired
	private DatatableService datatableService;
	
	@RequestMapping(value = "/view/danhSachChucDanh", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String getListChucDanh(Model model, HttpServletRequest request) {
		
		int iDisplayStart = Integer.parseInt(request.getParameter("iDisplayStart"));
		int iDisplayLength = Integer.parseInt(request.getParameter("iDisplayLength"));
		String sql = chucDanhService.getSQL(request);
		List<ChucDanh> listChucDanh = chucDanhService.findAll(iDisplayStart, iDisplayLength, sql);

		String recordsTotal = chucDanhService.getRecordsTotal();
		String recordsFiltered = chucDanhService.getRecordsFiltered(sql);
		String json = datatableService.getJsonChucDanh(recordsTotal, recordsFiltered, listChucDanh);

		return json;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listPhongBan(Model model, HttpServletRequest request) {
		
		int iDisplayStart = Integer.parseInt(request.getParameter("iDisplayStart"));
		int iDisplayLength = Integer.parseInt(request.getParameter("iDisplayLength"));
		String sql = this.chucDanhService.getSQL(request);
		List<ChucDanh> listChucDanh = this.chucDanhService.findAll(iDisplayStart, iDisplayLength, sql);

		String recordsTotal = this.chucDanhService.getRecordsTotal();
		String recordsFiltered = this.chucDanhService.getRecordsFiltered(sql);
		String json = this.datatableService.getJsonChucDanh(recordsTotal, recordsFiltered, listChucDanh);

		return json;
		
//		int totalRecords = chucDanhService.findAll().size();
//		int recordsPerPage = 10;
//		int totalPages = 0;
//		if ((totalRecords / recordsPerPage) % 2 == 0) {
//			totalPages = totalRecords / recordsPerPage;
//		} else {
//			totalPages = totalRecords / recordsPerPage + 1;
//		}
//		int startPosition = recordsPerPage * (currentPage - 1);

//		model.addAttribute("listChucDanh", chucDanhService.findAllForPaging(startPosition, recordsPerPage));
//		model.addAttribute("lastPage", totalPages);
//		model.addAttribute("currentPage", currentPage);
//		return "QuanLyPhanQuyen/chucdanh/list";
	}
	
	@RequestMapping(value = "/them-moi", method = RequestMethod.GET)
	public String addForm(Model model, final RedirectAttributes redirectAttributes) {
		model.addAttribute("chucDanh", new ChucDanh());
		return "QuanLyPhanQuyen/chucdanh/add_form";
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
		return "redirect:/quanlyphanquyen/quan-ly-chuc-danh/";
	}
	
	@RequestMapping(value = "/sua/{maChucDanh}", method = RequestMethod.GET)
	public String editForm(@PathVariable("maChucDanh") String maChucDanh, Model model) {
		model.addAttribute("chucDanh", chucDanhService.findByMaChucDanh(maChucDanh));
		return "QuanLyPhanQuyen/chucdanh/edit_form";
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
		return "redirect:/quanlyphanquyen/quan-ly-chuc-danh/";
	}
	
	@RequestMapping(value = "/xoa/{maChucDanh}", method = RequestMethod.GET)
	public String delete(@PathVariable("maChucDanh") String maChucDanh, final RedirectAttributes redirectAttributes) {
		try {
			chucDanhService.delete(maChucDanh);
			redirectAttributes.addFlashAttribute("messageSuccess", "Xóa thành công..");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("messageError", "Lỗi. Xin thử lại!");
		}
		return "redirect:/quanlyphanquyen/quan-ly-chuc-danh/";
	}
}
