package fasttrackse1702a.fbms.quanlyduan.controller;

import java.util.Collection;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class LayoutController {
	@ModelAttribute("username")
	public String userName() {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		return username;
	}
	@ModelAttribute("url")
	public String url(HttpServletRequest rq) {
		
		return rq.getRequestURI();
	}
	@ModelAttribute("local")
	public String local() {
		Locale locale = LocaleContextHolder.getLocale();
		return locale.toString();
	}
	@ModelAttribute("TPP")
	public boolean checkRoleTPP() {
		Collection<? extends GrantedAuthority> granted = SecurityContextHolder.getContext().getAuthentication()
				.getAuthorities();
		String role;
		// set page default to rules common

		for (int i = 0; i < granted.size(); i++) {
			role = granted.toArray()[i] + "";
			// System.out.println(role);
			if (role.equals("ROLE_TPP")) {

				return true;
			}
			;
		}
		return false;
	}
	@ModelAttribute("PM")
	public boolean checkRolePM() {
		Collection<? extends GrantedAuthority> granted = SecurityContextHolder.getContext().getAuthentication()
				.getAuthorities();
		String role;
		// set page default to rules common

		for (int i = 0; i < granted.size(); i++) {
			role = granted.toArray()[i] + "";
			// System.out.println(role);
			if (role.equals("ROLE_PM")) {

				return true;
			}
			;
		}
		return false;
	}
	
}
