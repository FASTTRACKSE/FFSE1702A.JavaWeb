package fasttrackse.a1702.fbms.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Test {
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String TestList(Model model) {
		return "QuanTriNhanSu/HoSoTongQuat/index";
	}
}
