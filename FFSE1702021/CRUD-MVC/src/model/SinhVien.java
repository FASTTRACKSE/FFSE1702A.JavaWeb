package model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SinhVien
 */
@WebServlet("/SinhVien")
public class SinhVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
	



	String masv;
    String name;
    String age;
    String cls;
    String dress;
    
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SinhVien() {
        super();
        // TODO Auto-generated constructor stub
    }


	public SinhVien(String masv, String name, String age, String cls, String dress) {
		super();
	
		this.masv = masv;
		this.name = name;
		this.age = age;
		this.cls = cls;
		this.dress = dress;
	}


	public String getMasv() {
		return masv;
	}


	public void setMasv(String masv) {
		this.masv = masv;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getCls() {
		return cls;
	}


	public void setCls(String cls) {
		this.cls = cls;
	}


	public String getDress() {
		return dress;
	}


	public void setDress(String dress) {
		this.dress = dress;
	}


}
