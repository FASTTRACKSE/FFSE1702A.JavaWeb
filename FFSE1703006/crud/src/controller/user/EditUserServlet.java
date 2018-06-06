package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.dao.UserDAO;

/**
 * Servlet implementation class EditUserServlet
 */
@MultipartConfig
@WebServlet("/user/edit")
public class EditUserServlet extends HttpServlet {
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
		if (request.getParameter("submit") == null) {
			showEdit(request, response);
		} else {
			doEdit(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void showEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		User user = userDAO.getRecordById(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/User.jsp");
		request.setAttribute("user", user);
		dispatcher.forward(request, response);
	}

	private void doEdit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		User u = new User();
		u.setId(request.getParameter("id"));
		u.setName(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setEmail(request.getParameter("email"));
		u.setSex(request.getParameter("sex"));
		u.setCountry(request.getParameter("country"));

		userDAO.updateUser(u);

		response.sendRedirect("/crud/user");
	}

}
