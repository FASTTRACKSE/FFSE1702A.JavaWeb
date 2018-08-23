package fasttrackse.ffse1702a.fbms.quanlytailieu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import fasttrackse.ffse1702a.fbms.quanlytailieu.dto.TaiLieuDTO;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.TaiLieu;
import fasttrackse.ffse1702a.fbms.quanlytailieu.model.QuanLyTaiLieuDAO;

@Controller
public class QuanLyTaiLieuController {
	@Autowired
	private QuanLyTaiLieuDAO quanLyTaiLieuDAO;

	@RequestMapping(value = { "/" })
	public String listTaiLieu(Model model) {
		model.addAttribute("taiLieuList", quanLyTaiLieuDAO.listTaiLieu());
		return "TaiLieuList";

	}
//Test Upload
	@RequestMapping(value = { "/uploadview" })
	public String index() {
		return "upload";
	}

	@RequestMapping(value = { "upload" })
	public String upload(@RequestParam(value = "file") CommonsMultipartFile commonsMultipartFiles,
			HttpServletRequest request, ModelMap modelMap) {
		// quanLyTaiLieuDAO.uploadfile(commonsMultipartFiles, request, modelMap);
		return "redirect:/";
	}

	
	//Trang Thêm
	@RequestMapping(value = { "/add" })
	public String addview(Model model) {

		model.addAttribute("TaiLieu", new TaiLieuDTO());
		return "Add";
	}

	@RequestMapping(value = { "/save" })
	public String addTaiLieu(@ModelAttribute(value = "TaiLieu") TaiLieuDTO taiLieuDTO, HttpServletRequest request,
			ModelMap modelMap) {	
		// copy từ QuanLyTaiLieudto -> QuanLyTaiLieuentity
		TaiLieu taiLieu = new TaiLieu();
		BeanUtils.copyProperties(taiLieuDTO, taiLieu);
		
		// UploadFile
		String filename = quanLyTaiLieuDAO.uploadfile(taiLieuDTO.getFile(), request, modelMap);
		// Them Tai Lieu
		taiLieu.setTaiVe(filename);
		quanLyTaiLieuDAO.addTaiLieu(taiLieu);
		return "redirect:/";
	}

}
