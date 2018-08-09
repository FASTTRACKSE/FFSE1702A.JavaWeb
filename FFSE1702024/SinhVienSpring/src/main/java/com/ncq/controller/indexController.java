package com.ncq.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ClassPathBeanDefinitionScanner;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ncq.entity.DatabaseSV;


@Controller

	@RequestMapping("/")
public class indexController {
	@GetMapping
		public String Default(ModelMap mm) {
			ApplicationContext context = new ClassPathXmlApplicationContext("Database.xml");
			
			DatabaseSV databasesv = (DatabaseSV)context.getBean("dbSV123");
			
			mm.put("List", databasesv.getListSinhVien());
			return "index";
		}
	
}
