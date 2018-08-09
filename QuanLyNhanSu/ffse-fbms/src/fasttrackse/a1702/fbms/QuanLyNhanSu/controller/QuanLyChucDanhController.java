package fasttrackse.a1702.fbms.QuanLyNhanSu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ChucDanh;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyChucDanhService;

@Controller
public class QuanLyChucDanhController {
	
	@Autowired(required=true)
	private QuanLyChucDanhService quanlychucdanhService;
	
	@RequestMapping(value = "/ns/chuc_danh", method = RequestMethod.GET)
	public String listChucDanh(Model model) {
		List<ChucDanh> list = quanlychucdanhService.listChucDanh();
		model.addAttribute("chucdanh", new ChucDanh());
		model.addAttribute("listChucDanh", list);
		return "QuanLyNhanSu/QuanLyChucDanh/ChucDanh";
	}
	
	@RequestMapping(value = "/ns/chuc_danh/add", method = RequestMethod.GET)
	public String addChucDanh(Model model) {
		
		model.addAttribute("chucdanh", new ChucDanh());
		return "QuanLyNhanSu/QuanLyChucDanh/FormChucDanh";
	}
	
	//For add and update person both
	@RequestMapping(value= "/ns/chuc_danh/save", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("chucdanh") ChucDanh p){
		
		if(p.getMaChucDanh() == null){
			//new person, add it
			this.quanlychucdanhService.addChucDanh(p);
		}else{
			//existing person, call update
			this.quanlychucdanhService.updateChucDanh(p);
		}
		
		return "redirect:/ns/chuc_danh";
		
	}
}
