package controller.users;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDao;
import model.bean.Users;

@WebServlet("/ViewUser")
@SuppressWarnings("serial")
public class ViewUserServelet extends HttpServlet {

	private static String list_user = "ListUser.jsp";

	public ViewUserServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			
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
				List<Users> list;
				list = UserDao.getRecords(start, total);
				request.setAttribute("users", list);

				int lastPage = (int) Math.ceil(UserDao.countRecords()*1.0 / total);
				request.setAttribute("currentPage", startid);
				request.setAttribute("lastPage", lastPage);
			}
			RequestDispatcher view = request.getRequestDispatcher(forward);
			view.forward(request, response);
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}