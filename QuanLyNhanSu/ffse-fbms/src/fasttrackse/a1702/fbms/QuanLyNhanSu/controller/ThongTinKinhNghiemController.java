package fasttrackse.a1702.fbms.QuanLyNhanSu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ThongTinKinhNghiemController {
	@RequestMapping(value = "ns/ho_so/kinh_nghiem", method = RequestMethod.GET)
	public String thongtinKinhNghiem(Model model) {
		return "QuanLyNhanSu/QuanLyHoSo/ThongTinKinhNghiem";
	}
}
