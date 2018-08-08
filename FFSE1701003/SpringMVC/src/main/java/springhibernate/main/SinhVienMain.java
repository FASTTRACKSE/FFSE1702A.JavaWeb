package springhibernate.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springhibernate.dao.LopDAO;
import springhibernate.dao.SinhVienDAO;
import springhibernate.entities.Lop;
import springhibernate.entities.SinhVien;

@Controller
public class SinhVienMain {
	
	@Autowired
	SinhVienDAO svDAO;
	@Autowired
	LopDAO lopDAO;
	
	public LopDAO getLopDAO() {
		return lopDAO;
	}

	public void setLopDAO(LopDAO lopDAO) {
		this.lopDAO = lopDAO;
	}

	public SinhVienDAO getSvDAO() {
		return svDAO;
	}

	public void setSvDAO(SinhVienDAO svDAO) {
		this.svDAO = svDAO;
	}

	@RequestMapping({"/","/home"})
	public String index() {
		return "index";
	}
	
	@RequestMapping({"/students/list","/students"})
	public String studentList(Model model) {
		List<SinhVien> listSV = svDAO.list();
		model.addAttribute("listSinhVien", listSV);
		return "listStudent";
	}
	
	@RequestMapping("/students/add")
	public String addStudent(Model model) {
		List<Lop> listLop = lopDAO.list();
		model.addAttribute("student", new SinhVien());
		model.addAttribute("listLop", listLop);
		return "addStudent";
	}
	
	@RequestMapping(value="/students/addStudent", method = RequestMethod.POST)
	public String doAdd(@ModelAttribute("student") SinhVien sinhvien, Model model) {
		svDAO.Save(sinhvien);
		return "redirect:" + "/students/list";
	}
	
	@RequestMapping("/students/edit/{id}")
	public String editStudent(@PathVariable("id") int id, Model model) {
		List<Lop> listLop = lopDAO.list();
		model.addAttribute("student", svDAO.getSinhVienById(id));
		model.addAttribute("listLop", listLop);
		return "editStudent";
	}
	
	@RequestMapping(value="/students/editStudent", method = RequestMethod.POST)
	public String doEdit(@ModelAttribute("student") SinhVien sinhvien) {
		svDAO.updateSinhVien(sinhvien);
		return "redirect:" + "/students/list";
	}
	
	@RequestMapping(value="/students/delete/{id}")
	public String doDelete(@PathVariable("id") int id) {
		svDAO.deleteSinhVien(id);
		return "redirect:" + "/students/list";
	}
}
		