package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String viewIndex() {
		return "Index";
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "trang-chu.html", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("taiKhoan", new TaiKhoan());
        return "trang_chu";
    }

    @RequestMapping(value = "ket-qua.html", method = RequestMethod.POST)
    public String view(ModelMap modelMap, @ModelAttribute(value = "taiKhoan") TaiKhoan taiKhoan) {
        modelMap.put("taiKhoan", taiKhoan);
        return "ket_qua";
    }
}
