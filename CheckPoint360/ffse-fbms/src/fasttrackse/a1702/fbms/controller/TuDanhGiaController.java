package fasttrackse.a1702.fbms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TuDanhGiaController {
	
	@RequestMapping(value = "/for")
	public String Form(Model model) {
		return "formtudanhgia";
	}
	
	
}
