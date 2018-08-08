package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Connect;
import model.Connect;
import model.SinhVien;
/**
 * Servlet implementation class InsertController
 */
@WebServlet("/InsertController")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connect cn = new Connect();
	Connection conn = (Connection) Connect.getConnect();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			  response.sendRedirect("/JSP-pj/ListController");
			}
	}

}
