package fasttrackse.ffse1702a.fhrm.controller.tlpl;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import fasttrackse.ffse1702a.fhrm.service.tlpl.HoSoService;



@Controller
@RequestMapping(value = { "/quantrinhansu" })
public class HoSoController {
	
	@Autowired
	HoSoService hoSoService;
	
	@RequestMapping(value = { "/list" })
	public String index(ModelMap mm) {
		mm.put("hoso", hoSoService.getAll());
		return "QuanTriHeThong/quantrinhansu/list";
	}
	
	@RequestMapping(value = { "/hosonhanvien/{maNhanVien}" })
	public String viewhoso(ModelMap mm, @PathVariable("maNhanVien") String maNhanVien) {
		mm.put("hoso", hoSoService.getById(maNhanVien));
		return "QuanTriHeThong/quantrinhansu/hosonhanvien";
	}
}