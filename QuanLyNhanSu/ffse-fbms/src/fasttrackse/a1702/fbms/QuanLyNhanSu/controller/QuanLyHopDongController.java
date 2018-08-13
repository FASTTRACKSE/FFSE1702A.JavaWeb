package fasttrackse.a1702.fbms.QuanLyNhanSu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.PhongBan;
//import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyPhongBanService;

@Controller
public class QuanLyHopDongController {
	@Autowired
	//private QuanLyPhongBanService quanlyphongbanService;

	@RequestMapping(value = "/ns/hop_dong", method = RequestMethod.GET)
	public String listHopDong (Model model) {
		return "QuanLyNhanSu/QuanLyHopDong/HopDong";
	
	}
}
