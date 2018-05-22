package controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.SachDAO;
import Model.Sach;
@WebServlet("/DaNgonNgu")
@SuppressWarnings("serial")
public class Controller extends HttpServlet {
	private static String insert_or_edit = "/Sach.jsp";
	private static String list_sach = "/ListSach.jsp";

	public Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String lang="";
		if(request.getParameter("lang")!=null) {
		lang = request.getParameter("lang").toString();
		}
		request.setAttribute("lang",lang);
		String forward = list_sach;
		String action = request.getParameter("action");

		if (action == null || action.equalsIgnoreCase("listSach")) {
			String startid = request.getParameter("page");
			if (startid == null) {
				startid = "1";
			}
			int start = Integer.parseInt(startid);
			int total = 5;
			if (start != 1) {
				start = start - 1;
				start = start * total + 1;
			}
			List<Sach> list = SachDAO.getRecords(start, total);
			request.setAttribute("sach", list);

			int lastPage = (SachDAO.countRecords() / total) + 1;
			request.setAttribute("currentPage", startid);
			request.setAttribute("lastPage", lastPage);
		} else if (action.equalsIgnoreCase("delete")) {
			String maSach = request.getParameter("maSach");
			SachDAO.delete(maSach);

			request.setAttribute("sach", SachDAO.getAllRecords());

		} else if (action.equalsIgnoreCase("edit")) {
			forward = insert_or_edit;
			String maSach = request.getParameter("maSach");
			Sach sach = SachDAO.getRecordById(maSach);
			request.setAttribute("sach", sach);
		} else {
			forward = insert_or_edit;
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Sach sach = new Sach();
		request.setCharacterEncoding("UTF-8");

		sach.setTenSach(request.getParameter("tenSach"));
		sach.setTenTacGia(request.getParameter("tenTacGia"));
		sach.setTheLoai(request.getParameter("theLoai"));
		sach.setNhaXB(request.getParameter("nhaXB"));
		sach.setNamXB(request.getParameter("namXB"));
		sach.setSoLuong(request.getParameter("soLuong"));
		sach.setTinhTrang(request.getParameter("tinhTrang"));

		String maSach = request.getParameter("maSach");
		if (maSach == null || maSach.isEmpty()) {
			SachDAO.add(sach);
		} else {
			sach.setMaSach(maSach);
			SachDAO.update(sach);
		}

		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}
}
