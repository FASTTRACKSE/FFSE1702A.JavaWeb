
package fasttrackse.a1702.fbms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.model.entity.DanhGiaNgangHang;
import fasttrackse.a1702.fbms.service.DanhGiaNgangHangService;

@Controller
public class DanhGiaNgangHangController {


	
	@RequestMapping(value = "/demo")
	public String xxx() {
		return "listdanhgia";
	}

	@Autowired
	private DanhGiaNgangHangService danhGiaNgangHangService;

	@RequestMapping(value = "/xxx", method = { RequestMethod.POST })
	public String addStudent(@ModelAttribute("danhgia") DanhGiaNgangHang s) {
		this.danhGiaNgangHangService.luuDanhGia(s);
		return "redirect:/xxx";

	}

	@RequestMapping(value = "/xxx", method = { RequestMethod.GET })
	public String addViewStudent(ModelMap mm) {
		mm.put("danhgia", new DanhGiaNgangHang());
		return "nganghang";

	}

}