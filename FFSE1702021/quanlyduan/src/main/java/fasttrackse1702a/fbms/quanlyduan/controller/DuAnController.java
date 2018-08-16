package fasttrackse1702a.fbms.quanlyduan.controller;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse1702a.fbms.quanlyduan.entity.Database;
import fasttrackse1702a.fbms.quanlyduan.entity.DuAn;
import fasttrackse1702a.fbms.quanlyduan.entity.Framework;
import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;
import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;
import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;
import fasttrackse1702a.fbms.quanlyduan.service.DatabaseService;
import fasttrackse1702a.fbms.quanlyduan.service.DuAnService;
import fasttrackse1702a.fbms.quanlyduan.service.FrameworkService;
import fasttrackse1702a.fbms.quanlyduan.service.KhachHangService;
import fasttrackse1702a.fbms.quanlyduan.service.NgonNguService;
import fasttrackse1702a.fbms.quanlyduan.service.TinhTrangService;

@Controller
@RequestMapping("/duan")
public class DuAnController {
	@Autowired
	DuAnService duAnService;
	@Autowired
	NgonNguService ngonNguService;
	@Autowired
	KhachHangService khachHangService;
	@Autowired
	DatabaseService databaseService;
	@Autowired
	FrameworkService frameworkService;
	@Autowired
	TinhTrangService tinhTrangService;
	@RequestMapping(value = { "/create" })
	public String index(ModelMap mm) {
		mm.put("view", "duan/create.jsp");
		mm.put("duan", new DuAn());
		
		getData(mm);
		return "layout";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(ModelMap mm,@ModelAttribute("duan")  @Validated DuAn duan, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "duan/create.jsp");
			return "layout";
		}
		duAnService.save(duan);
		return "layout";
	}
	
	@RequestMapping(value = { "/list","" })
	public String list(ModelMap mm ) {
		mm.put("view", "duan/danhsach.jsp");
		
		mm.put("list", duAnService.getAll());
		
		
		return "layout";
	}
	
	@RequestMapping(value = { "/detail/{maDuAn}" })
	public String detail(ModelMap mm,@PathVariable("maDuAn") String maDuAn) {
		mm.put("view", "duan/detail.jsp");
		
		mm.put("duan", duAnService.getById(maDuAn));
		
		
		
		return "layout";
	}
	@RequestMapping(value = { "/update/{maDuAn}" })
	public String update(ModelMap mm,@PathVariable("maDuAn") String maDuAn) {
		mm.put("view", "DuAn/capnhat.jsp");		
		mm.put("duan", duAnService.getById(maDuAn));
		
		return "layout";
	}
	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(ModelMap mm,@ModelAttribute("duan") @Validated DuAn duan, BindingResult result) {
		
		
		if(result.hasErrors()) {
			mm.put("view", "DuAn/capnhat.jsp");
			return "layout";
		}
		duAnService.update(duan);
		return "redirect:list";
	}
	@RequestMapping(value = { "/delete/{maDuAn}" })
	public String delete(ModelMap mm,@PathVariable("maDuAn") String maDuAn) {
				
		duAnService.delete(maDuAn);
		return "redirect:list";
	}
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
		binder.registerCustomEditor(NgonNgu.class, "ngonNgu", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(ngonNguService.getById(text));
			}
		});
	
		binder.registerCustomEditor(Framework.class, "framework", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(frameworkService.getById(text));
			}
		});
		binder.registerCustomEditor(Database.class, "database", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(databaseService.getById(text));
			}
		});
	
	}
	public void getData(ModelMap mm) {
		mm.put("khachhang", khachHangService.getAll());
		mm.put("database", databaseService.getAll());
		mm.put("framework", frameworkService.getAll());
		mm.put("ngonngu", ngonNguService.getAll());
		mm.put("tinhtrang", tinhTrangService.getAll());
	}

}