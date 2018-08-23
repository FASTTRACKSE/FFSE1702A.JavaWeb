package fasttrackse1702a.fbms.quanlyduan.controller;

import java.beans.PropertyEditorSupport;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fasttrackse1702a.fbms.quanlyduan.dao.UserDao;
import fasttrackse1702a.fbms.quanlyduan.entity.Database;
import fasttrackse1702a.fbms.quanlyduan.entity.DoiTac;
import fasttrackse1702a.fbms.quanlyduan.entity.DuAn;
import fasttrackse1702a.fbms.quanlyduan.entity.Framework;
import fasttrackse1702a.fbms.quanlyduan.entity.HoSoNhanVien;
import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;
import fasttrackse1702a.fbms.quanlyduan.entity.NghiepVu;
import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;
import fasttrackse1702a.fbms.quanlyduan.entity.NhiemVu;
import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;
import fasttrackse1702a.fbms.quanlyduan.entity.User;
import fasttrackse1702a.fbms.quanlyduan.entity.VaiTro;
import fasttrackse1702a.fbms.quanlyduan.service.DatabaseService;
import fasttrackse1702a.fbms.quanlyduan.service.DoiTacService;
import fasttrackse1702a.fbms.quanlyduan.service.DuAnService;
import fasttrackse1702a.fbms.quanlyduan.service.FrameworkService;
import fasttrackse1702a.fbms.quanlyduan.service.HoSoNhanVienService;
import fasttrackse1702a.fbms.quanlyduan.service.KhachHangService;
import fasttrackse1702a.fbms.quanlyduan.service.NghiepVuService;
import fasttrackse1702a.fbms.quanlyduan.service.NgonNguService;
import fasttrackse1702a.fbms.quanlyduan.service.NhiemVuService;
import fasttrackse1702a.fbms.quanlyduan.service.TinhTrangService;
import fasttrackse1702a.fbms.quanlyduan.service.VaiTroService;

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
	TinhTrangService tinhTrangService;
	@Autowired
	DatabaseService databaseService;
	@Autowired
	FrameworkService frameworkService;
	@Autowired
	HoSoNhanVienService hoSoNhanVienService;
	@Autowired
	VaiTroService vaiTroService;
	@Autowired
	NhiemVuService nhiemVuService;
	@Autowired
	NghiepVuService nghiepVuService;
	@Autowired
	DoiTacService doiTacService;
	@Autowired
	UserDao userDao;
	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = { "/phancongnhiemvu/create/{maDuAn}" })
	public String phanCongNhiemVu(@PathVariable("maDuAn") int maDuAn, ModelMap mm, Principal pr) {
		Set<DuAn> listDuAn = new HashSet<DuAn>();
		listDuAn = listDuAnPm(listDuAn(pr), getNhanVien(pr));
		if (checkGoUrl(listDuAn, maDuAn)) {
			mm.put("title", "quanlyduan.addrole");
			mm.put("duan", duAnService.getById(maDuAn));
			mm.put("nhiemvu", new NhiemVu());
			mm.put("view", "duan/phancongnhiemvu/create.jsp");
			mm.put("nhanvien", hoSoNhanVienService.getAll());
			mm.put("vaitro", vaiTroService.getAll());
			return "layout";
		} else {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = { "/phancongnhiemvu/addpm/{maDuAn}" })
	public String phanCongNhiemVuPM(@PathVariable("maDuAn") int maDuAn, ModelMap mm, Principal pr) {
		Set<DuAn> listDuAn = new HashSet<DuAn>();
		listDuAn = listDuAnPm(listDuAn(pr), getNhanVien(pr));
		if (checkGoUrl(listDuAn, maDuAn)) {
			mm.put("title", "duan.addpm");
			mm.put("duan", duAnService.getById(maDuAn));
			mm.put("nhiemvu", new NhiemVu());
			mm.put("view", "duan/phancongnhiemvu/addpm.jsp");
			mm.put("nhanvien", hoSoNhanVienService.getAll());
			mm.put("vaitro", vaiTroService.getById("VT01"));
			return "layout";
		} else {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = { "/phancongnhiemvu/create" }, method = RequestMethod.POST)
	public String phanCongNhiemVu(final RedirectAttributes redirectAttributes, ModelMap mm,
			@ModelAttribute("nhiemvu") @Validated NhiemVu nhiemvu, BindingResult result) {
		if (nhiemVuService.getDetailNhiemVu(nhiemvu.getMaDuAn(), nhiemvu.getMaNhanVien(),
				nhiemvu.getMaVaiTro()) != null) {
			FieldError error = new FieldError("nhiemvu", "maVaiTro", messageSource.getMessage("Unique.nhiemvu.maVaiTro",
					new String[] { nhiemvu.getMaVaiTro() }, Locale.getDefault()));
			result.addError(error);
		}
		System.out.println(nhiemvu.getMaVaiTro());

		int maDuAn = nhiemvu.getMaDuAn();
		if (result.hasErrors()) {
			mm.put("title", "quanlyduan.addrole");
			mm.put("view", "duan/phancongnhiemvu/create.jsp");
			mm.put("duan", duAnService.getById(maDuAn));
			mm.put("nhanvien", hoSoNhanVienService.getAll());
			mm.put("vaitro", vaiTroService.getAll());
			return "layout";
		}
		nhiemVuService.save(nhiemvu);
		redirectAttributes.addFlashAttribute("message", "Added successfully.");
		return "redirect:list/" + maDuAn;
	}

	@RequestMapping(value = { "/phancongnhiemvu/list/{maDuAn}" })
	public String phanCongNhiemVuList(ModelMap mm, @PathVariable("maDuAn") int maDuAn, Principal pr) {
		Set<DuAn> listDuAn = new HashSet<DuAn>();
		listDuAn = listDuAn(pr);
		if (checkGoUrl(listDuAn, maDuAn)) {
			mm.put("title", "duan.quanlyduan.list");
			if (checkRolePM() || checkRoleTPP()) {
				mm.put("granted", true);
			}
			mm.put("nhiemvu", nhiemVuService.getAll(maDuAn));
			mm.put("duan", duAnService.getById(maDuAn));
			mm.put("view", "duan/phancongnhiemvu/danhsach.jsp");
			return "layout";
		} else {
			return "redirect:/error";
		}

	}

	@RequestMapping(value = { "/phancongnhiemvu/update/{maDuAn}/{maNhanVien}/{maVaiTro}" })
	public String phanCongNhiemVuUpdate(ModelMap mm, @PathVariable("maDuAn") int maDuAn,
			@PathVariable("maNhanVien") int maNhanVien, @PathVariable("maVaiTro") String maVaiTro, Principal pr) {
		Set<DuAn> listDuAn = new HashSet<DuAn>();
		listDuAn = listDuAnPm(listDuAn(pr), getNhanVien(pr));
		if (checkGoUrl(listDuAn, maDuAn)) {
			mm.put("title", "duan.quanlyduan.update");
			mm.put("duan", duAnService.getById(maDuAn));
			mm.put("nhanvien", hoSoNhanVienService.getByID(maNhanVien));
			mm.put("nhiemvu", nhiemVuService.getDetailNhiemVu(maDuAn, maNhanVien, maVaiTro));
			mm.put("view", "duan/phancongnhiemvu/capnhat.jsp");
			mm.put("vaitro", vaiTroService.getAll());
			return "layout";
		} else {
			return "redirect:/error";
		}

	}

	@RequestMapping(value = { "/phancongnhiemvu/update" }, method = RequestMethod.POST)
	public String phanCongNhiemVuUpdate(final RedirectAttributes redirectAttributes, ModelMap mm,
			@ModelAttribute("nhiemvu") @Validated NhiemVu nhiemvu, BindingResult result) {
		int maDuAn = nhiemvu.getMaDuAn();
		if (result.hasErrors()) {
			mm.put("view", "duan/phancongnhiemvu/capnhat.jsp");
			mm.put("title", "duan.quanlyduan.update");
			mm.put("vaitro", vaiTroService.getAll());
			return "layout";
		}
		nhiemVuService.update(nhiemvu);
		redirectAttributes.addFlashAttribute("message", "Update successfully.");
		return "redirect:list/" + maDuAn;
	}

	@RequestMapping(value = { "/phancongnhiemvu/delete/{maDuAn}/{maNhanVien}/{maVaiTro}" })
	public String phanCongNhiemVuDelete(final RedirectAttributes redirectAttributes, ModelMap mm,
			@PathVariable("maDuAn") int maDuAn, @PathVariable("maNhanVien") int maNhanVien,
			@PathVariable("maVaiTro") String maVaiTro) {
		if (checkRolePM() && maVaiTro.equals("VT01")) {
			redirectAttributes.addFlashAttribute("message", "Can not delete PM");
			return "redirect:/duan/phancongnhiemvu/list/" + maDuAn;
		}
		nhiemVuService.delete(nhiemVuService.getDetailNhiemVu(maDuAn, maNhanVien, maVaiTro));
		redirectAttributes.addFlashAttribute("message", "Delete successfully.");
		return "redirect:/duan/phancongnhiemvu/list/" + maDuAn;
	}

	@RequestMapping(value = { "/create" })
	public String create(ModelMap mm, Principal pr) {
		if (checkRoleTPP()) {
			mm.put("view", "duan/create.jsp");
			mm.put("title", "duan.add");
			mm.put("duan", new DuAn());
			getData(mm);
			return "layout";
		} else {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String create(final RedirectAttributes redirectAttributes, ModelMap mm,
			@ModelAttribute("duan") @Validated DuAn duan, BindingResult result) {
		if (duan.getStartDate().after(duan.getEndDate())) {
			FieldError error = new FieldError("duan", "startDate", messageSource.getMessage("Erorr.duan.startDate",
					new String[] { duan.getEndDate().toString() }, Locale.getDefault()));
			result.addError(error);
		}
		if (result.hasErrors()) {
			getData(mm);
			mm.put("view", "duan/create.jsp");
			mm.put("title", "duan.add");
			return "layout";
		}
		duAnService.save(duan);
		redirectAttributes.addFlashAttribute("message", "Add successfully.");
		return "redirect:list";
	}

	@RequestMapping(value = { "detail/{maDuAn}" })
	public String detail(ModelMap mm, @PathVariable("maDuAn") int maDuAn, Principal pr) {
		Set<DuAn> listDuAn = new HashSet<DuAn>();
		listDuAn = listDuAn(pr);
		if (checkGoUrl(listDuAn, maDuAn)) {
			boolean addPM = true;
			for (NhiemVu nhiemVu : nhiemVuService.getAll(maDuAn)) {
				if (nhiemVu.getMaVaiTro().equals("VT01")) {
					addPM = false;
					break;
				}
			}
			mm.put("phancongnhiemvu", nhiemVuService.getAll(maDuAn));
			mm.put("addPM", addPM);
			mm.put("view", "duan/detail.jsp");
			mm.put("title", "duan.detail");
			mm.put("duan", duAnService.getById(maDuAn));
			return "layout";
		} else {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = { "/list" })
	public String list(ModelMap mm, Principal pr,
			@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		if (checkRoleTPP()) {
			mm.put("granted", true);
		}
		List<DuAn> listDuAn = new ArrayList<DuAn>();
		List<DuAn> newListDuAn = new ArrayList<DuAn>();
		listDuAn.addAll(listDuAn(pr));
		if (listDuAn(pr).size() <= 5) {
			newListDuAn = listDuAn;
		} else {
			for (int i = (page - 1) * 5; i < page * 5; i++) {
				if (i < listDuAn.size()) {
					DuAn duAn = listDuAn.get(i);
					newListDuAn.add(duAn);
				}

			}
		}
		mm.put("total", Math.ceil(((float) listDuAn(pr).size() / 5)));
		mm.put("view", "duan/danhsach.jsp");
		mm.put("title", "duan.list");
		mm.put("list", newListDuAn);
		return "layout";
	}

	@RequestMapping(value = { "/update/{maDuAn}" })
	public String update(ModelMap mm, @PathVariable("maDuAn") int maDuAn, Principal pr) {
		Set<DuAn> listDuAn = new HashSet<DuAn>();
		listDuAn = listDuAnPm(listDuAn(pr), getNhanVien(pr));
		if (checkGoUrl(listDuAn, maDuAn)) {
			mm.put("title", "duan.update");
			mm.put("view", "duan/capnhat.jsp");
			mm.put("duan", duAnService.getById(maDuAn));
			getData(mm);
			return "layout";
		} else {
			return "redirect:/error";
		}
	}

	@RequestMapping(value = { "/update" }, method = RequestMethod.POST)
	public String update(final RedirectAttributes redirectAttributes, ModelMap mm,
			@ModelAttribute("DuAn") @Validated DuAn DuAn, BindingResult result) {

		if (result.hasErrors()) {
			mm.put("view", "duan/capnhat.jsp");
			mm.put("title", "duan.update");
			getData(mm);
			return "redirect:list";
		}
		duAnService.update(DuAn);
		redirectAttributes.addFlashAttribute("message", "Update successfully.");
		return "layout";
	}

	public void getData(ModelMap mm) {
		mm.put("ngonngu", ngonNguService.getAll());
		mm.put("khachhang", khachHangService.getAll());
		mm.put("database", databaseService.getAll());
		mm.put("framework", frameworkService.getAll());
		mm.put("tinhtrang", tinhTrangService.getAll());
		mm.put("doitac", doiTacService.getAll());
		mm.put("nghiepvu", nghiepVuService.getAll());
	}

	public Set<DuAn> listDuAnPm(Set<DuAn> listDuAn, HoSoNhanVien nhanVien) {
		Set<DuAn> listDuAnPm = new HashSet<DuAn>();
		if (checkRoleTPP()) {
			for (DuAn duAn : duAnService.getAll()) {
				listDuAnPm.add(duAn);
			}
			return listDuAnPm;
		}
		for (DuAn duan : listDuAn) {
			if (nhiemVuService.getById(duan.getMaDuAn(), nhanVien.getMaNhanVien()) != null) {
				for (NhiemVu nhiemVu : nhiemVuService.getById(duan.getMaDuAn(), nhanVien.getMaNhanVien())) {
					if (nhiemVu.getMaVaiTro().equals("VT01")) {
						listDuAnPm.add(duan);
					}
				}
			}

		}
		// System.out.println(listDuAnPm.size());
		return listDuAnPm;
	}

	public boolean checkRoleTPP() {
		Collection<? extends GrantedAuthority> granted = SecurityContextHolder.getContext().getAuthentication()
				.getAuthorities();
		String role;
		// set page default to rules common

		for (int i = 0; i < granted.size(); i++) {
			role = granted.toArray()[i] + "";
			// System.out.println(role);
			if (role.equals("ROLE_TPP")) {

				return true;
			}
			;
		}
		return false;
	}

	public boolean checkRolePM() {
		Collection<? extends GrantedAuthority> granted = SecurityContextHolder.getContext().getAuthentication()
				.getAuthorities();
		String role;
		// set page default to rules common

		for (int i = 0; i < granted.size(); i++) {
			role = granted.toArray()[i] + "";
			// System.out.println(role);
			if (role.equals("ROLE_PM")) {

				return true;
			}
			;
		}
		return false;
	}

	public HoSoNhanVien getNhanVien(Principal pr) {
		User user = userDao.loadUserByUsername(pr.getName());
		return user.getNhanVien();
	}

	public Set<DuAn> listDuAn(Principal pr) {
		Set<DuAn> listDuAn = new TreeSet<DuAn>();
		if (checkRoleTPP()) {
			for (DuAn duAn : duAnService.getAll()) {
				duAn.setGrantUpdate(1);
				listDuAn.add(duAn);
			}

		} else {
			User user = userDao.loadUserByUsername(pr.getName());
			HoSoNhanVien nhanVien = getNhanVien(pr);
			for (DuAn duan : user.getNhanVien().getDuAn()) {
				if (nhiemVuService.getById(duan.getMaDuAn(), nhanVien.getMaNhanVien()) != null) {
					for (NhiemVu nhiemVu : nhiemVuService.getById(duan.getMaDuAn(), nhanVien.getMaNhanVien())) {
						if (nhiemVu.getMaVaiTro().equals("VT01")) {
							duan.setGrantUpdate(1);
							listDuAn.add(duan);
						} else {
							listDuAn.add(duan);
						}
					}
				}

			}

		}
		return listDuAn;
	}

	public boolean checkGoUrl(Set<DuAn> listDuAn, int maDuAn) {
		if (checkRoleTPP()) {
			return true;
		}
		for (DuAn da : listDuAn) {
			if (maDuAn == da.getMaDuAn()) {
				return true;

			}
		}
		return false;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {

		binder.registerCustomEditor(NgonNgu.class, "ngonNgu", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(ngonNguService.getById(text));
			}
		});
		binder.registerCustomEditor(KhachHang.class, "khachHang", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(khachHangService.getById(text));
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
		binder.registerCustomEditor(TinhTrang.class, "tinhTrang", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(tinhTrangService.getById(text));
			}
		});
		binder.registerCustomEditor(HoSoNhanVien.class, "hoSoNhanVien", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(hoSoNhanVienService.getByID(Integer.parseInt(text)));
			}

		});
		binder.registerCustomEditor(VaiTro.class, "vaiTro", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(vaiTroService.getById(text));
			}

		});
		binder.registerCustomEditor(NghiepVu.class, "nghiepVu", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(nghiepVuService.getById(text));
			}

		});
		binder.registerCustomEditor(DoiTac.class, "doiTac", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				setValue(doiTacService.getById(text));
			}

		});

	}

}