package controller.users;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.dao.UserDao;

@WebServlet("/users/AddUserServlet")
public class AddUserServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddUserServelet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String sex = request.getParameter("sex");
		String country = request.getParameter("country");

		User newUser = new User(name, password, email, sex, country);
		UserDao user = new UserDao();
		try {
			if(user.insertUser(newUser)) {
				response.sendRedirect("/JSPServlet/users/ViewAddUserSuccess");
			}else {
				response.sendRedirect("/JSPServlet/users/viewAddUserError");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
