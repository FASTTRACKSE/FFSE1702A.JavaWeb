package fasttrackse.a1702.fbms.logwork.controller;

import static org.springframework.test.web.client.match.MockRestRequestMatchers.method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fasttrackse.a1702.fbms.logwork.entity.ThoiGianLamViec;
import fasttrackse.a1702.fbms.logwork.service.LogworkService;

@Controller
public class MainController {

	@Autowired
	@Qualifier("logworkService")
	LogworkService service;

	public void setService(LogworkService service) {
		this.service = service;
	}
	
	@RequestMapping("/")
	public String index() {
		return "/logwork/index";
	}

	@RequestMapping(value = "/logwork/list", method = RequestMethod.GET)
	public String list(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "1") int currentPage) {
		
		int totalRecords = service.getAll().size();
		int recordsPerPage = 3;
		int totalPages = 0;
		if ((totalRecords / recordsPerPage) % 2 == 0) {
			totalPages = totalRecords / recordsPerPage;
		} else {
			totalPages = totalRecords / recordsPerPage + 1;
		}
		int startPosition = recordsPerPage * (currentPage - 1);

		model.addAttribute("listLogwork", service.getAllForPaging(startPosition, recordsPerPage));
		model.addAttribute("lastPage", totalPages);
		model.addAttribute("currentPage", currentPage);
		
		return "/logwork/list";
	}

	@RequestMapping(value = "/logwork/create", method = RequestMethod.GET)
	public String createShow(Model model) {
		model.addAttribute("logWork1", new ThoiGianLamViec());	
		return "/logwork/create";
	}

	@RequestMapping(value = "/logwork/create", method = RequestMethod.POST)
	public String create(@ModelAttribute("logWork1") ThoiGianLamViec logWork) {
		service.create(logWork);
		return "/logwork/create";
	}

	
}
