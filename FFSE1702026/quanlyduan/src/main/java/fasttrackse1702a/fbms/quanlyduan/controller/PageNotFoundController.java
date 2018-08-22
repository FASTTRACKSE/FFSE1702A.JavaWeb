package fasttrackse1702a.fbms.quanlyduan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PageNotFoundController {
	@RequestMapping("/error")
	@ResponseBody
	public String pageNotFound() {
		return "Page Not Found";
	}
}
