package crud.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import crud.bean.User;
import crud.dao.UserDao;

/**
 * Servlet implementation class ViewusersServlet
 */
@WebServlet("/Viewusers")
public class Viewusers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewusers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String spageid = request.getParameter("page");
		if (spageid == null) {
			spageid = "1";
		}
		int pageid = Integer.parseInt(spageid);
		int total = 2;
		if (pageid != 1) {
			pageid = pageid - 1;
			pageid = pageid * total + 1;
		}
		List<User> list = UserDao.getRecords(pageid, total);
		request.setAttribute("users", list);
		
		int lastPage = (UserDao.countRecords() / total) + 1;
		request.setAttribute("currentPage", spageid);
		request.setAttribute("lastPage", lastPage);
		RequestDispatcher rd = request.getRequestDispatcher("viewusers.jsp");
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
