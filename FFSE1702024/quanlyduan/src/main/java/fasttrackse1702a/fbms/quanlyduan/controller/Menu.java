package fasttrackse1702a.fbms.quanlyduan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Menu {
	@RequestMapping("/menu")
	public static String menu(ModelMap mm) {
		mm.put("xinchao", "xin chao");
		return "layout/menu";
	}
}
