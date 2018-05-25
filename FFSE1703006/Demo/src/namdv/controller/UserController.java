package namdv.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import namdv.dao.UserDAO;
import namdv.model.User;

public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String insert_or_edit = "/User.jsp";
	private String list_user = "/ListUser.jsp";

	public UserController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = list_user;
		String action = request.getParameter("action");
		if (action == null || action.equalsIgnoreCase("listUser")) {
			String spageid = request.getParameter("page");
			if (spageid == null) {
				spageid = "1";
			}
			int pageid = Integer.parseInt(spageid);
			int total = 10;
			if (pageid != 1) {
				pageid = pageid - 1;
				pageid = pageid * total + 1;
			}
			List<User> list = UserDAO.getRecords(pageid, total);
			// request.setAttribute("users", UserDAO.getAllRecords());
			request.setAttribute("users", list);

			int lastPage = Math.round(UserDAO.countRecords() / total);
			request.setAttribute("currentPage", spageid);
			request.setAttribute("lastPage", lastPage);
		} else if (action.equalsIgnoreCase("delete")) {
			String userId = request.getParameter("userId");
			UserDAO.delete(userId);

			request.setAttribute("users", UserDAO.getAllRecords());

		} else if (action.equalsIgnoreCase("edit")) {
			forward = insert_or_edit;
			String userId = request.getParameter("userId");
			User u = UserDAO.getRecordById(userId);
			request.setAttribute("user", u);
		} else {
			forward = insert_or_edit;
		}

		String lang = request.getParameter("lang");
		if (lang == null || lang.equals("en")) {
			request.setAttribute("messages", "namdv.lang.messages_en");
		} else {
			request.setAttribute("messages", "namdv.lang.messages_vi");
		}

		if (action != null && action.equalsIgnoreCase("delete")) {
			response.sendRedirect(request.getContextPath());
		} else {
			RequestDispatcher view = request.getRequestDispatcher(forward);
			view.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User u = new User();
		u.setName(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setEmail(request.getParameter("email"));
		u.setSex(request.getParameter("sex"));
		u.setCountry(request.getParameter("country"));

		String userId = request.getParameter("userid");
		if (userId == null || userId.isEmpty()) {
			UserDAO.add(u);
		} else {
			u.setId(userId);
			UserDAO.update(u);
		}

		response.sendRedirect(request.getContextPath());
	}
}
