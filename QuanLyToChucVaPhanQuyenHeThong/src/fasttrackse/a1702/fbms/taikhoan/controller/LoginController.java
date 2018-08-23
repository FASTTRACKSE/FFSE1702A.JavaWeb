package fasttrackse.a1702.fbms.taikhoan.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fasttrackse.a1702.fbms.taikhoan.model.entities.Login;
import fasttrackse.a1702.fbms.taikhoan.model.entities.TaiKhoan;
import fasttrackse.a1702.fbms.taikhoan.service.TaiKhoanService;

@Controller
public class LoginController {
	@Autowired
	TaiKhoanService taiKhoanService;

	public TaiKhoanService getTaiKhoanService() {
		return taiKhoanService;
	}

	public void setTaiKhoanService(TaiKhoanService taiKhoanService) {
		this.taiKhoanService = taiKhoanService;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());
		return mav;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		TaiKhoan user = taiKhoanService.validateTaiKhoan(login);
		if (user != null) {
			mav = new ModelAndView("list");
			mav.addObject("firstname", user.getMaNhanVien());
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Tên đăng nhập hoặc mật khẩu sai!!");
		}
		return mav;
	}
}
