package fasttrackse.a1702.fbms.QuanLyNhanSu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuanLyChucDanhController {
	@RequestMapping(value = "/ns/chuc_danh", method = RequestMethod.GET)
	public String listHoSo(Model model) {
		return "QuanLyNhanSu/QuanLyChucDanh/chucdanh";
	}
}
