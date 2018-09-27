package fasttrackse.ffse1702a.fhrm.controller.security;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageNotFoundController {
	@RequestMapping("/403")
	public String pageAccessDenied() {
		return "QuanTriHeThong/error-403";
	}
	@RequestMapping("/404")
	public String pageNotFound() {
		return "QuanTriHeThong/error-404";
	}
}