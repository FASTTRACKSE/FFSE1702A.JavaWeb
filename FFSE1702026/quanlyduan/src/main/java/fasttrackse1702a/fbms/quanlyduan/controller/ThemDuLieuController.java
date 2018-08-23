package fasttrackse1702a.fbms.quanlyduan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import fasttrackse1702a.fbms.quanlyduan.entity.DoiTac;
import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;
import fasttrackse1702a.fbms.quanlyduan.service.DoiTacService;
import fasttrackse1702a.fbms.quanlyduan.service.KhachHangService;
import java.text.Normalizer;
import java.util.regex.Pattern;

@Controller
public class ThemDuLieuController {
	@Autowired
	DoiTacService khachHangService;
	@RequestMapping(value="/themdulieu")
	@ResponseBody
	public String themDuLieu() {
		String[] loaiCty= {"Công ty IT","Tập đoàn IT","Công ty cổ phần","Doanh nghiệp tư nhân"};
		String[] tenCty= {"Phương Trang", "Mạnh Dũng", "Văn Đạt","Minh Hoàng","Viết Hiệp","Văn Vũ"};
		String[] soDuong= {"12", "14","15","55","98","74","59","184","367","43","34","76"};
		String[] tenDuong= {"Đặng Dung","Điện Biên Phủ","Nam Kì Khởi Nghĩa","Lạc Long Quân","Ôn Hiền", "Tùng Lâm","A Phủ","Tôn Đức Thắng"};
		for(int i=0;i<15;i++) {
			DoiTac khachHang =new DoiTac();
			if(i<9) {
			khachHang.setMaDoiTac("DT00"+(i+1));
			}else {
			khachHang.setMaDoiTac("DT0"+(i+1));	
			}
			int l=(int) ((Math.random()*loaiCty.length)%loaiCty.length);
			int t=(int) ((Math.random()*tenCty.length)%tenCty.length);
			int dcl=(int) ((Math.random()*soDuong.length)%soDuong.length);
			int dct=(int) ((Math.random()*tenDuong.length)%tenDuong.length);
			khachHang.setDiaChi(soDuong[dcl]+" - "+tenDuong[dct] +" - Đà Nẵng");
			khachHang.setEmail(removeAccent(loaiCty[l]+" "+tenCty[t])+"@gmail.com");
			khachHang.setTenDoiTac(loaiCty[l]+" "+tenCty[t]);
			khachHang.setPhoneNumber(906977612-i);
			
			khachHang.setIsDelete(0);
			khachHangService.save(khachHang);
			
		}
		
		
		return "Thêm Dữ Liệu Thành Công";
		
	}
	public String removeAccent(String s) {
		  
		  String temp = Normalizer.normalize(s, Normalizer.Form.NFD);
		  Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
		  return pattern.matcher(temp).replaceAll("").replaceAll(" ", "").toLowerCase();
		 }
}
