package fasttrackse.ffse1702a.fhrm.controller.tlpl;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import fasttrackse.ffse1702a.fhrm.entity.tlpl.HoSo;
import fasttrackse.ffse1702a.fhrm.service.tlpl.HoSoService;
import fasttrackse.ffse1702a.fhrm.service.tlpl.PBService;
import fasttrackse.ffse1702a.fhrm.service.tlpl.VaiTroService;

@Controller
@RequestMapping(value = { "/quantrinhansu" })
public class HoSoController {
	@Autowired
	HoSoService hoSoService;
	@Autowired
	VaiTroService vaiTroService;
	@Autowired
	PBService phongBanService;

	public static final String UPLOAD_DIRECTORY = "/upload";

	// @RequestMapping(value = { "/list" })
	// public String index(ModelMap
	// mm,@RequestParam(value="page",required=false,defaultValue="1") int page) {
	// mm.put("list", hoSoService.listHoSo(page));
	//
	// int lastpage =(int) (hoSoService.count()/3+1);
	// mm.put("pageindex", page);
	// mm.put("lastpage", lastpage);
	// return "QuanTriHeThong/quantrinhansu/list";
	// }
	// list hồ sơ
	@RequestMapping(value = { "/list" })
	public String index(ModelMap mm) {
		mm.put("list", hoSoService.getAll());

		mm.put("hoso", new HoSo());
		return "QuanTriHeThong/quantrinhansu/list";
	}

	// xem hồ sơ chi tiết
	@RequestMapping(value = { "/hosonhanvien/{maNhanVien}" })
	public String viewhoso(ModelMap mm, @PathVariable("maNhanVien") int maNhanVien) {
		mm.put("hoso", hoSoService.getById(maNhanVien));
		return "QuanTriHeThong/quantrinhansu/hosonhanvien";
	}

	// @RequestMapping(value = { "/insert" }, method = RequestMethod.POST)
	// public String insert(ModelMap mm,@ModelAttribute("hoso") @Validated HoSo
	// hoso, BindingResult result) {
	// hoSoService.save(hoso);
	// return "redirect:list";
	// }

	// thêm thông tin
	@RequestMapping(value = { "/insert" }, method = RequestMethod.POST)
	public String addsave(ModelMap mm,@ModelAttribute("hoso") @Valid HoSo hoso, BindingResult result,
			@RequestParam("file") MultipartFile file, HttpSession session) throws IOException {
		if (result.hasErrors()) {
			
			mm.put("vaitro", vaiTroService.getAll());
			mm.put("phongban", phongBanService.getAll());
			List<String> listGender = new ArrayList<String>();
			listGender.add("Nam");
			listGender.add("Nữ");
			listGender.add("Thứ 3");
			mm.put("listgender", listGender);

			List<String> marital = new ArrayList<String>();
			marital.add("Chưa");
			marital.add("Rồi");
			mm.put("marital", marital);
			
			return "QuanTriHeThong/quantrinhansu/themmoi";
		}
		ServletContext context = session.getServletContext();
		String path = context.getRealPath(UPLOAD_DIRECTORY);
		File fileUpload = new File(path);
		if (!fileUpload.exists()) {
			fileUpload.mkdir();
		}

		String filename = file.getOriginalFilename();
		System.out.println(path + " " + filename);
		byte[] bytes = file.getBytes();
		BufferedOutputStream stream = new BufferedOutputStream(
				new FileOutputStream(new File(path + File.separator + filename)));
		hoso.setImg(filename);
		stream.write(bytes);
		stream.flush();
		stream.close();
		hoSoService.save(hoso);
		return "redirect:list";
	}

	// view them moi
	@RequestMapping(value = { "/themmoi" })
	public String viewinsert(ModelMap mm) {
		mm.put("hoso", new HoSo());
		mm.put("vaitro", vaiTroService.getAll());
		mm.put("phongban", phongBanService.getAll());
		List<String> listGender = new ArrayList<String>();
		listGender.add("Nam");
		listGender.add("Nữ");
		listGender.add("Thứ 3");
		mm.put("listgender", listGender);

		List<String> marital = new ArrayList<String>();
		marital.add("Chưa");
		marital.add("Rồi");
		mm.put("marital", marital);
		return "QuanTriHeThong/quantrinhansu/themmoi";
	}

	// update thông tin
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(ModelMap mm,@ModelAttribute("hoso") @Valid HoSo hoso, BindingResult result,
			@RequestParam("file") MultipartFile file, HttpSession session) throws IOException {
		//int maNhanVien = hoso.getMaNhanVien();
		if (result.hasErrors()) {
		//	mm.put("hoso", hoSoService.getById(maNhanVien));
			mm.put("vaitro", vaiTroService.getAll());
			mm.put("phongban", phongBanService.getAll());
			List<String> listGender = new ArrayList<String>();
			listGender.add("Nam");
			listGender.add("Nữ");
			listGender.add("Thứ 3");
			mm.put("listgender", listGender);

			List<String> marital = new ArrayList<String>();
			marital.add("Chưa");
			marital.add("Rồi");
			mm.put("marital", marital);
			return "QuanTriHeThong/quantrinhansu/capnhat";
		}
		ServletContext context = session.getServletContext();
		String path = context.getRealPath(UPLOAD_DIRECTORY);
		File fileUpload = new File(path);
		if (!fileUpload.exists()) {
			fileUpload.mkdir();
		}

		String filename = file.getOriginalFilename();
		System.out.println(path + " " + filename);
		byte[] bytes = file.getBytes();
		BufferedOutputStream stream = new BufferedOutputStream(
				new FileOutputStream(new File(path + File.separator + filename)));
		hoso.setImg(filename);
		stream.write(bytes);
		stream.flush();
		stream.close();
		hoSoService.update(hoso);
		return "redirect:list";
		
	}
	// view update
	@RequestMapping(value = { "/capnhat/{maNhanVien}" })
	public String viewupdate(ModelMap mm,@PathVariable("maNhanVien") int maNhanVien) {
		mm.put("hoso", hoSoService.getById(maNhanVien));
		mm.put("vaitro", vaiTroService.getAll());
		mm.put("phongban", phongBanService.getAll());
		
		List<String> listGender = new ArrayList<String>();
		listGender.add("Nam");
		listGender.add("Nữ");
		listGender.add("Thứ 3");
		mm.put("listgender", listGender);

		List<String> marital = new ArrayList<String>();
		marital.add("Chưa");
		marital.add("Rồi");
		mm.put("marital", marital);
		return "QuanTriHeThong/quantrinhansu/capnhat";
	}
	@RequestMapping(value = { "/delete/{maNhanVien}" })
	public String delete(ModelMap mm,@PathVariable("maNhanVien") int maNhanVien) {
		hoSoService.delete(maNhanVien);
		return "redirect:/quantrinhansu/list";
	}
}