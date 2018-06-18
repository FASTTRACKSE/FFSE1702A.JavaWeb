package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.Part;

import model.bean.UserBean;
import model.dao.UserDao;

/**
 * Servlet implementation class Adduser
 */
@WebServlet("/Adduser")
public class Adduser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adduser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MultipartRequest m = new MultipartRequest(request, "C:\\Users\\Nam\\Documents\\GitHub\\FFSE1702A.JavaWeb\\FFSE1703007\\demo\\WebContent\\assets\\upload", 1000000, new DefaultFileRenamePolicy());
		String name = m.getParameter("name");
		String password = m.getParameter("password");
		String email = m.getParameter("email");
		String sex = m.getParameter("sex");
		String country = m.getParameter("country");
		
		String avatarName = m.getFilesystemName("avatar");
		
		System.out.println(avatarName);
		
//		UserBean u = new UserBean();
//		u.setName(name);
//		u.setPassword(password);
//		u.setEmail(email);
//		u.setSex(sex);
//		u.setCountry(country);
//		int i = 0;
//		try {
//			i = UserDao.save(u);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		if (i > 0) {
//			request.getRequestDispatcher("adduser-success.jsp").include(request, response);
//		} else {
//			request.getRequestDispatcher("adduser-error.jsp").include(request, response);
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
