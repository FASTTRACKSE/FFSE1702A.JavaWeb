package com.kb.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kb.model.Employee;
import com.kb.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	@Qualifier(value="employeeServiceImpl")
	private EmployeeService employeeService;

	@RequestMapping(value = {"/" , "/employee"})
	public String listemployees(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("employeeList", employeeService.listEmployees());
		return "employee";
	}

	// Same method For both Add and Update Employee
	@RequestMapping(value = "/employee/add")
	public String addemployee(@ModelAttribute("employee") Employee employee) {

		if (employee.getEmployeeId()==null || employee.getEmployeeId() == 0) {
			// new employee, add it
			employeeService.addEmployee(employee);
		} else {
			// existing employee, call update
			employeeService.updateEmployee(employee);
		}

		return "redirect:/employee";

	}

	@RequestMapping("/employee/remove/{id}")
	public String removeemployee(@PathVariable("id") int id) {

		employeeService.removeEmployee(id);
		return "redirect:/employee";
	}

	@RequestMapping("/employee/edit/{id}")
	public String editemployee(@PathVariable("id") int id, Model model) {
		model.addAttribute("employee", employeeService.getEmployeeById(id));
		model.addAttribute("employeeList", employeeService.listEmployees());
		return "employee";
	}
}
