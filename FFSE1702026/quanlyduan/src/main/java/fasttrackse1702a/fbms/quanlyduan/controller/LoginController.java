package fasttrackse1702a.fbms.quanlyduan.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class LoginController {
	@RequestMapping(value = { "/login", "/","" })
	public String login(@RequestParam(value = "error", required = false) final String error, final Model model,final  Principal pr ) {
		if (error != null) {
			model.addAttribute("message", "Login Failed!");
		}
		/*final String currentUserName = SecurityContextHolder.getContext().getAuthentication().getName();
		System.out.println(currentUserName);
		if(currentUserName!=null ) {
			System.out.println("xxx");
		}*/
		
		 if(pr!=null) {
			 return "redirect:/duan/list";
		 }
		 model.addAttribute("view","login.jsp");
		return "layout";
	}
		
}