package controller.users;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDao;



@WebServlet("/DeleteUser")
@SuppressWarnings("serial")
public class DeleteUserServelet extends HttpServlet {


	public DeleteUserServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
		String start = request.getParameter("page");
		if(start == null) {
			start = "1";
		}
		String userId = request.getParameter("userId");
		
			UserDao.delete(userId);
		
			response.sendRedirect(request.getContextPath() + "/ViewUser?page=" + start);
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}

}