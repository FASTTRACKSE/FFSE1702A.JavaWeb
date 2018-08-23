package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.ffse1702a.fbms.QuanLyDuAn.model.entity.DuAn;
import fasttrackse.ffse1702a.fbms.QuanLyDuAn.model.entity.NhiemVu;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dto.DuAnDTO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dto.HoSoNhanVienDTO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.VaiTroService;

@Controller
public class ThongTinKinhNghiemController {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;
	
	@Autowired
	private VaiTroService vaiTroService;

	@RequestMapping(value = "ns/ho_so/kinh_nghiem/{maNhanVien}", method = RequestMethod.GET)
	public String thongtinKinhNghiem(@PathVariable("maNhanVien") int maNhanVien, Model model) {
		HoSoNhanVien hsnv = this.quanLyHoSoService.getHoSoNhanVienById(maNhanVien);
		
		HoSoNhanVienDTO hoSoNhanVienDTO = new HoSoNhanVienDTO();
		BeanUtils.copyProperties(hsnv, hoSoNhanVienDTO);
		
		DuAnDTO duAnDTO;
		Set<DuAnDTO> duAnDTOLts = new HashSet<DuAnDTO>();
		for (DuAn duAn : hsnv.getDuAn()) {
			duAnDTO = new DuAnDTO();
			BeanUtils.copyProperties(duAn, duAnDTO);
			duAnDTOLts.add(duAnDTO);
		}
		hoSoNhanVienDTO.setDuAnDTO(duAnDTOLts);
		
		List<String> vaiTro;
		for(DuAnDTO duan : hoSoNhanVienDTO.getDuAnDTO()) {
			List<NhiemVu> getNV = vaiTroService.getNhiemVuById(maNhanVien, duan.getMaDuAn());
			//System.out.println(getNV);
			vaiTro = new ArrayList<String>();
			for(NhiemVu nv : getNV) {
				String getVT = vaiTroService.getVaiTroById(nv.getMaVaiTro()).getTenVaiTro();
				vaiTro.add(getVT);
			}
			duan.setVaiTro(vaiTro);
		}
		model.addAttribute("hoSoNhanVien", hoSoNhanVienDTO);
		return "QuanLyNhanSu/QuanLyHoSo/ThongTinKinhNghiemForm";
	}
}
