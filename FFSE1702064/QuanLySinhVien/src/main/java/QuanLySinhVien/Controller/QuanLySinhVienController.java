package QuanLySinhVien.Controller;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kb.model.Employee;

import QuanLySinhVien.DAO.QuanLySinhVienDAO;
import QuanLySinhVien.DAO.QuanLySinhVienDAOlmpl;
import QuanLySinhVien.entiny.SinhVien;

@Controller
public class QuanLySinhVienController {
	@Autowired
	private QuanLySinhVienDAO quanLySinhVienDAOCuaDung;
	
	@RequestMapping(value = {"/" , "/sinhvien"})
	public String listsinhvien(Model model) {
		model.addAttribute("sinhvien", new SinhVien());
		model.addAttribute("sinhVienList", quanLySinhVienDAOCuaDung.listStudent());
		return "SinhVien";
	} 
	
	@RequestMapping(value = {"/add" })
	public String insert(Model model) {
		model.addAttribute("SinhVien", new SinhVien());
		return "AddSinhVien";
	}
	
	@RequestMapping(value = {"/save" })	
	public String addSinhVien(@ModelAttribute("SinhVien") SinhVien SinhVien) {
			// new employee, add it
		quanLySinhVienDAOCuaDung.addStudent(SinhVien);
		return "redirect:/";
	}
	
	@RequestMapping(value = {"/viewUpdate/{id}" })
	public String viewUpdate(@PathVariable int id ,Model model) {
		SinhVien sinhvien = quanLySinhVienDAOCuaDung.findById(id);
		model.addAttribute("SinhVien", sinhvien);
		return "updateSinhVien";
	}
	@RequestMapping("/update")
	public String update(@ModelAttribute("SinhVien") SinhVien SinhVien, Model model) {
		quanLySinhVienDAOCuaDung.updateStudent(SinhVien);
		return "redirect:/";
	}
	@RequestMapping(value = {"/delete/{id}" })
	public String delete(@PathVariable("id") int id) {
		quanLySinhVienDAOCuaDung.removeStudent(id);
		return "redirect:/";
	}
}
