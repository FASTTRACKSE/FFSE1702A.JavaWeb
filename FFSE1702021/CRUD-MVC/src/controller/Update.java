package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.fabric.xmlrpc.base.Array;

import model.Connect;
import model.SinhVien;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String ma = request.getParameter("ma");
	String action=request.getParameter("action");
	ArrayList<SinhVien> SV =Connect.getUpdate(ma);
	if(action.equalsIgnoreCase("edit")) {
		request.setAttribute("update",SV );
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/SinhVien/Update.jsp");
		dispatch.forward(request, response);
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String update = request.getParameter("update");
		String edit = request.getParameter("edit");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	String ma = request.getParameter("masv");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String cls = request.getParameter("cls");
	String dress = request.getParameter("dress");
	SinhVien sv = new SinhVien(ma,name,age,cls,dress);
	
		if(update != null) {
			Connect.update(sv, edit);
			response.sendRedirect("/CRUD-MVC/InforSV");
		}
	}

}
