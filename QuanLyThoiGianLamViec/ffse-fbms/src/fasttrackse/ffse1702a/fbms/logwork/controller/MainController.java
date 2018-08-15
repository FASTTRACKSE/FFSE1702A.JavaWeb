package fasttrackse.ffse1702a.fbms.logwork.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/logwork/list")
	public String list() {
		return "/logwork/list";
	}
	
	@RequestMapping("/logwork/create")
	public String create() {
		return "/logwork/create";
	}
}
