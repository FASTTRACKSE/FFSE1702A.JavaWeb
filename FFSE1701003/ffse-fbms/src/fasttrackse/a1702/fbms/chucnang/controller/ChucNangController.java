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
public class ChucNangController {

	@Autowired
	ChucNangDao cnDao;

	protected ChucNangDao getCnDao() {
		return cnDao;
	}

	protected void setCnDao(ChucNangDao cnDao) {
		this.cnDao = cnDao;
	}

	@RequestMapping(value = { "/chuc-nang", "/chuc-nang/" }, method = RequestMethod.GET)
	public String danhSachChucNang(Model model) {
		List<ChucNang> dsChucNang = cnDao.list();
		model.addAttribute("listChucNang", dsChucNang);
		return "chucnang/list";
	}

	@RequestMapping(value = { "/chuc-nang/them-moi", "/chuc-nang/them-moi/" }, method = RequestMethod.GET)
	public String addForm(Model model) {
		model.addAttribute("chucNang", new ChucNang());
		return "chucnang/add_form";
	}
	
	@RequestMapping(value = { "/chuc-nang/them-moi/luu", "/chuc-nang/them-moi/luu/" }, method = RequestMethod.POST)
	public String addNew(@ModelAttribute("chucNang") ChucNang cn, final RedirectAttributes redirectAttributes) {
		try{
			// cnDao.save(cn);
			redirectAttributes.addFlashAttribute("message", "<h1>Thêm mới thành công..</h1>");
		}catch(Exception e) {
			redirectAttributes.addFlashAttribute("message", "<strong>Lỗi. Xin thử lại!</strong>");
		}
		
		return "redirect:chuc-nang/thong-bao";
	}
	
	@RequestMapping(value = { "/chuc-nang/sua/{code}", "/chuc-nang/sua/{id}/" }, method = RequestMethod.GET)
	public String editForm(@PathVariable("code") String code ,Model model) {
		model.addAttribute("chucNang", cnDao.getChucNangByCode(code));
		return "chucnang/form";
	}
	
	@RequestMapping(value="/chuc-nang/thong-bao", method=RequestMethod.GET)
	public String showMessage() {
		return "chucnang/showMessage";
	}

}
