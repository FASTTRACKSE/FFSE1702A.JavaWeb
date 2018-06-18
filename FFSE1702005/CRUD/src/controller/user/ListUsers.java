package controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDao;
import model.bean.UserBean;

@WebServlet(urlPatterns= {"/ListUsers"})
public class ListUsers extends HttpServlet {
	private static String INSERT = "/user.jsp";
	private static String UserRecord = "/listUser.jsp";
	private UserDao dao;

	public ListUsers() {
		super();
		dao = new UserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String redirect = "";
		String action = request.getParameter("action");

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
		int lastPage = (UserDao.countRecords() / total) + 1;
		request.setAttribute("currentPage", startid);
		request.setAttribute("lastPage", lastPage);

		if (action == null || action.equalsIgnoreCase("listUser")) {
 			List<UserBean> list = UserDao.getRecords(start, total);
 			request.setAttribute("users", list);
 			redirect = UserRecord;
         } else {
			redirect = INSERT;
		}

		RequestDispatcher rd = request.getRequestDispatcher(redirect);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
