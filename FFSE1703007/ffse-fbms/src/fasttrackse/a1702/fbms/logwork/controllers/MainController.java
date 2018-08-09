package fasttrackse.a1702.fbms.logwork.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/")
	public String create() {
		return "/logwork/list";
	}
}
