package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import model.Database;
import model.KhachHang;

/**
 * Servlet implementation class CRUDservlet
 */
@WebServlet("/khachhang/crud")
public class CRUDservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CRUDservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		Database db = new Database();
		if (action.equalsIgnoreCase("userid")) {
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			try {
				ResultSet rs = db.getData("select * from Customer where Id = " + id);
				rs.next();
				request.setAttribute("Khachhang22", rs);
				RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/Khachhang1/CapNhat.jsp");
				dispatch.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else if (action.equalsIgnoreCase("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			try {
				db.updateData("delete from Customer where Id = " + id + "");
				String site = new String("/CRUD/Khachhang");
				response.setStatus(response.SC_MOVED_TEMPORARILY);
				response.setHeader("Location", site);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
