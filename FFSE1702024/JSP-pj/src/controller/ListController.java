package controller;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class inforSV1
 */
@WebServlet("/ListController")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connect cn = new Connect();
	Connection conn = (Connection) Connect.getConnect();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// laydulieu
		ArrayList<SinhVien> sv = Connect.getAll();
		// truyendulieu
		request.setAttribute("ListSV", sv);
		// chuyen trang
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/ListSV.jsp");
		dispatch.forward(request, response);
		
		
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		//ep kiểu
//		int start;
//		int count =7;
//	   //out.println(SV.get(0).getAge());
//		//pageid =1 k pt
//		//pageid !=1 pt
//		if (request.getParameter("pageid")==null) {
//			start =1;
//			ArrayList<SinhVien> SV = Connect.Display(start, count);
//			int pageid =1;
//			request.setAttribute("listSV", SV);
//			request.setAttribute("numberpage", pageid);
//		}else {
//			String pageidstr =request.getParameter("pageid");
//			int pageid = Integer.parseInt((pageidstr).toString());
//			pageid=pageid-1;
//			start=pageid*count+1;
//			pageid +=1;
//			ArrayList<SinhVien> SV = Connect.Display(start, count);
//			request.setAttribute("listSV", SV);
//			request.setAttribute("numberpage", pageid);
//		}
//		try {
//			int sumrow = Connect.Countrow();
//			int maxpageid =(sumrow/count)+1;
//			request.setAttribute("maxpageid", maxpageid);
//			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/ListSV.jsp");
//			dispatch.forward(request, response);
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		
	}

		
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
