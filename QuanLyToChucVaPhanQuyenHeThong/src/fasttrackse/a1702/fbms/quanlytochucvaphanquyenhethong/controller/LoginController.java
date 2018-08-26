package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	@RequestMapping(value = { "/login", "/" })
	public String login(@RequestParam(value = "error", required = false) final String error, final Model model) {
		if (error != null) {
			model.addAttribute("message", "Login Failed!");
		}
		return "login";
	}

	@RequestMapping(value = {"/trang-chu", "/home"})
	public String admin() {
		return "dashboard";
	}
	
	//for 403 access denied page
	@RequestMapping("/403")
	public String accessDeniedPage() {
		return "403";
	}


//	@RequestMapping("/user")
//	public String user() {
//		return "jsp/user";
//	}

	@RequestMapping("/logout")
	public String logout(final Model model) {
		model.addAttribute("message", "Logged out!");
		return "login";
	}
	
}