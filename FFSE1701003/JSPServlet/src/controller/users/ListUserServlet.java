package controller.users;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.dao.*;
import util.Paging;

public class ListUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao = new UserDao();
    
    public ListUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String strWhere = "";
			String order = "";
			int total = userDao.getCount();
			int pageSize = 8;
			int currentPage = 0;
			int curPage = 0; // curPage = currentPage - 1;
			
			String spageid = request.getParameter("page");
			if (spageid == null) {
				currentPage = 0;
				curPage = 0;
			} else {
				currentPage = Integer.parseInt(spageid);
				curPage = Integer.parseInt(spageid) - 1;
			}
			List<User> list = userDao.getAllRecords(strWhere, order, curPage, pageSize);
			
			String linkFull = "";
			String paging = "";
			
			String queryString = request.getQueryString();
			if (queryString != null) {
				Map<String, String> mapUrl = Paging.getQueryMap(request.getQueryString());
				if (request.getQueryString().contains("page=")) {
					if (request.getParameter("page") != null) {
						mapUrl.put("page", "{page}");
					}
				}
				linkFull = Paging.generateQueryString(mapUrl);
			}else {
				linkFull = "page={page}";
			}
			paging = Paging.generatePaging(total, pageSize, currentPage, linkFull);
			
			request.setAttribute("listUser", list);
			request.setAttribute("spageid", spageid);
			request.setAttribute("paging", paging);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/viewusers.jsp");
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
