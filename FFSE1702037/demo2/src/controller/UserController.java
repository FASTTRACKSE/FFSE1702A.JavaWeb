package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import model.User;

@WebServlet("/DaNgonNgu")
@SuppressWarnings("serial")
public class UserController extends HttpServlet {
	private static String insert_or_edit = "User.jsp";
	private static String list_user = "ListUser.jsp";

	public UserController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String lang = "";
			if (request.getParameter("lang") != null) {
				lang = request.getParameter("lang").toString();

			}
			request.setAttribute("lang", lang);
			String forward = list_user;
			String action = request.getParameter("action");
			String startid = request.getParameter("page");
			if (startid == null) {
				startid = "1";
			}

			if (action == null || action.equalsIgnoreCase("listUser")) {
				int start = Integer.parseInt(startid);
				int total = 2;
				if (start != 1) {
					start = start - 1;
					start = start * total + 1;

				}
				List<User> list;
				list = UserDao.getRecords(start, total);
				request.setAttribute("users", list);

				int lastPage = (UserDao.countRecords() / total) + 1;
				request.setAttribute("currentPage", startid);
				request.setAttribute("lastPage", lastPage);
			} else if (action.equalsIgnoreCase("delete")) {
				String userId = request.getParameter("userId");
				UserDao.delete(userId);

			} else if (action.equalsIgnoreCase("edit")) {
				forward = insert_or_edit;
				String userId = request.getParameter("userId");
				User u = UserDao.getRecordById(userId);
				request.setAttribute("user", u);
			} else {
				forward = insert_or_edit;
			}

			if (action != null && action.equalsIgnoreCase("delete")) {
				// UserController?page=2
				response.sendRedirect(request.getContextPath() + "/UserController?page=" + startid);
			} else {
				RequestDispatcher view = request.getRequestDispatcher(forward);
				view.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
		User u = new User();
		request.setCharacterEncoding("UTF-8");

		u.setName(request.getParameter("username"));
		u.setYear(request.getParameter("year"));
		u.setClassroom(request.getParameter("classroom"));
		u.setSex(request.getParameter("sex"));
		u.setCountry(request.getParameter("country"));
		u.setCountry(request.getParameter("image"));
		String userId = request.getParameter("userid");
		if (userId == null || userId.isEmpty()) {
			
				UserDao.addUser(u);
			
		} else {
			u.setId(userId);
			UserDao.update(u);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}
}