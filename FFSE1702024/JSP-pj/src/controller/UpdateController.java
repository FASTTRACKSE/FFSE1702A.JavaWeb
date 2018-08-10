package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Connect;
import model.SinhVien;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ma = request.getParameter("ma");
		String action=request.getParameter("action");
		ArrayList<SinhVien> SV =Connect.getUpdate(ma);
		if(action.equalsIgnoreCase("edit")) {
			request.setAttribute("update",SV );
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/UpdateSV.jsp");
			dispatch.forward(request, response);
		}
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			response.sendRedirect("/JSP-pj/ListController");
		}
	}
	

	}
