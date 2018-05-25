package controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Database;
import model.KhachHang;
import tablib.Panigation;;

/**
 * Servlet implementation class Khachhangservlet
 */
@WebServlet("/Khachhang")
public class Khachhangservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		if (request.getParameter("lang") == null) {
			String lang = "vietnamese";
			HttpSession session = request.getSession();
			session.setAttribute("lang", lang);
			service1(request, response);
		} else {
			String lang = request.getParameter("lang");
			HttpSession session = request.getSession();
			session.setAttribute("lang", lang);
			service1(request, response);
		}

	}

	/*
	 * phuong thuc
	 */
	protected void service1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {

			int count = 7;
			int start;
			// new pageid =1: khong phan trang
			// neu pageid !=1-> phan trang;
			if (request.getParameter("pageid") == null || Integer.parseInt(request.getParameter("pageid")) < 0) {
				System.out.println("hung");
				start = 1;
				Database db = new Database();
				Connection conn = db.openConnect();
				List<KhachHang> list = Panigation.DisplayKH(start, count, conn);
				int pageid = 1;
				request.setAttribute("listkh", list);
				request.setAttribute("numberpage", pageid);
				// New location to be redirected

			} else {
				String pageidStr = request.getParameter("pageid");
				int pageid = Integer.parseInt((pageidStr).toString());
				pageid = pageid - 1;
				start = pageid * count + 1;
				pageid += 1;
				Database db = new Database();
				Connection conn = db.openConnect();
				List<KhachHang> list = Panigation.DisplayKH(start, count, conn);
				request.setAttribute("listkh", list);
				request.setAttribute("numberpage", pageid);
				// New location to be redirected

			}

			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/Khachhang1/DanhSach.jsp");
			dispatch.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
