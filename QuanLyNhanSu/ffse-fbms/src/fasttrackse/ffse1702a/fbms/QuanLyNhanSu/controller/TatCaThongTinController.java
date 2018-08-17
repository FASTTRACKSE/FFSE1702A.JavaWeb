package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.ThongTinKinhNghiemService;

@Controller
public class TatCaThongTinController {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;
	
	@Autowired
	private ThongTinKinhNghiemService thongTinKinhNghiemService;

	@RequestMapping(value = "ns/ho_so/xem_tat_ca/{maNhanVien}", method = RequestMethod.GET)
	public String tatCaThongTin(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
		Map<String, Integer> ngonngu = this.thongTinKinhNghiemService.listNgonNgu(maNhanVien);
		Map<String, Integer> framework = this.thongTinKinhNghiemService.listFramework(maNhanVien);
		Map<String, Integer> database = this.thongTinKinhNghiemService.listDatabase(maNhanVien);
		model.addAttribute("listFramework", framework);
		model.addAttribute("listDatabase", database);
		model.addAttribute("listNgonNgu", ngonngu);
		model.addAttribute("hoSoNhanVien", hsnv);
		return "QuanLyNhanSu/QuanLyHoSo/TatCaThongTinForm";
	}
}
