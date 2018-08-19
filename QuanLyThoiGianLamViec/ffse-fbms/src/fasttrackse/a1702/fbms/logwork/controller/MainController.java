package fasttrackse.a1702.fbms.logwork.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.a1702.fbms.logwork.entity.ThoiGianLamViec;
import fasttrackse.a1702.fbms.logwork.service.LogworkService;

@Controller
public class MainController {
	
	@Autowired
	LogworkService service;
	
	public void setService(LogworkService service) {
		this.service = service;
	}

	@RequestMapping("/logwork/list")
	public String list() {
		return "/logwork/list";
	}
	
	@RequestMapping(value = "/logwork/create", method = RequestMethod.GET)
	public String createShow() {
		return "/logwork/create";
	}
	
	@RequestMapping(value = "/logwork/create", method = RequestMethod.POST)
	public String create(@ModelAttribute("logWork") ThoiGianLamViec logWork) {
		service.create(logWork);
		return "/logwork/create";
	}
}
