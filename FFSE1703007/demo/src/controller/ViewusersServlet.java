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

import model.bean.UserBean;
import model.dao.UserDao;

/**
 * Servlet implementation class ViewusersServlet
 */
@WebServlet("/Viewusers")
public class ViewusersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewusersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String spageid = request.getParameter("page");
		if (spageid == null) {
			spageid = "1";
		}
		int pageid = Integer.parseInt(spageid);
		int recordPerPage = 2;
		int totalRecord = 0;
		try {
			totalRecord = UserDao.countRecords();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (pageid != 1) {
			pageid = pageid - 1;
			pageid = pageid * recordPerPage + 1;
		}
		List<UserBean> list = null;
		try {
			list = UserDao.getRecords(pageid, recordPerPage);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("users", list);
		
		int lastPage = 0;
		if((totalRecord%recordPerPage)==0) {
			lastPage = (totalRecord / recordPerPage);
		}else {
			lastPage = (totalRecord / recordPerPage)+1;
		}
		
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
