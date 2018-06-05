package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Connect;
import model.SinhVien;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Connect cn= new Connect();
    Connection conn=(Connection) Connect.getConnect(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
 			request.setCharacterEncoding("utf-8");
 			response.setCharacterEncoding("utf-8");
		String insert = request.getParameter("insert");
		String ma = request.getParameter("masv");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String cls = request.getParameter("cls");
		String dress = request.getParameter("dress");
		SinhVien sv = new SinhVien(ma,name,age,cls,dress);
		if(insert != null) {
		  Connect.insert(sv);
		  response.sendRedirect("/CRUD-MVC/InforSV");
		}
		
	}

}
