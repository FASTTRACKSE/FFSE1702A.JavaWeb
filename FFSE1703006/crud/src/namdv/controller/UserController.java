package namdv.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import namdv.dao.UserDAO;
import namdv.model.User;

@MultipartConfig
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "uploadFiles";
	private UserDAO userDAO;
	
	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
		
		System.out.println("Connect DB");
		userDAO = new UserDAO(jdbcURL, jdbcUsername, jdbcPassword);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getPathInfo();
		if (action == null) {
			action = "";
		}
		try {
			switch (action) {
			case "/add":
				showAdd(request, response);
				break;
			case "/do_add":
				doAdd(request, response);
				break;
			case "/delete":
				delete(request, response);
				break;
			case "/update":
				showUpdate(request, response);
				break;
			case "/do_update":
				doUpdate(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
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
		List<User> listUser = userDAO.getRecords(pageid, total);
		request.setAttribute("listUser", listUser);

		int lastPage = Math.round(userDAO.countRecords() / total);
		request.setAttribute("currentPage", spageid);
		request.setAttribute("lastPage", lastPage);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ListUser.jsp");
		dispatcher.forward(request, response);
	}

	private void showAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/User.jsp");
		dispatcher.forward(request, response);
	}

	private void showUpdate(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		String id = request.getParameter("id");
		User user = userDAO.getRecordById(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/User.jsp");
		request.setAttribute("user", user);
		dispatcher.forward(request, response);

	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		User u = new User();
		u.setName(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setEmail(request.getParameter("email"));
		u.setSex(request.getParameter("sex"));
		u.setCountry(request.getParameter("country"));
		
		// gets absolute path of the web application
        String appPath = request.getServletContext().getRealPath("");

        // constructs path of the directory to save uploaded file
        String savePath = appPath + File.separator + SAVE_DIR;
        System.out.println(savePath); 
        
        // creates the save directory if it does not exists
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
        
		Part filePart = request.getPart("file");
	    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

	    filePart.write(savePath + File.separator + fileName);

		userDAO.add(u);
		response.sendRedirect("list");
	}

	private void doUpdate(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		User u = new User();
		u.setId(request.getParameter("id"));
		u.setName(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setEmail(request.getParameter("email"));
		u.setSex(request.getParameter("sex"));
		u.setCountry(request.getParameter("country"));

		userDAO.update(u);
		response.sendRedirect("list");
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String id = request.getParameter("id");
		userDAO.delete(id);
		response.sendRedirect("list");
	}
	
}