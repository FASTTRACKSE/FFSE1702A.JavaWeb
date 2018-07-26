package controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.dao.UserDAO;

/**
 * Servlet implementation class ListUserServlet
 */
@WebServlet("/user")
public class ListUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

	@Override
	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

		userDAO = new UserDAO(jdbcURL, jdbcUsername, jdbcPassword);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String search = request.getParameter("search");
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
		List<User> listUser = userDAO.getRecords(search, pageid, total);
		request.setAttribute("listUser", listUser);

		// tổng - (số trang * 10) | nếu > 0 thì + 1 (ép kiểu double)
		int lastPage = Math.round(userDAO.countRecords(search) / total) + 1;
		request.setAttribute("currentPage", spageid);
		request.setAttribute("lastPage", lastPage);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/ListUser.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
