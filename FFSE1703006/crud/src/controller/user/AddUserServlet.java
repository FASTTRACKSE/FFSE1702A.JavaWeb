package controller.user;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.bean.User;
import model.dao.UserDAO;

/**
 * Servlet implementation class AddUserServlet
 */
@MultipartConfig
@WebServlet("/user/add")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "uploadFiles";
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
			showAdd(request, response);
		} else {
			doAdd(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void showAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/User.jsp");
		dispatcher.forward(request, response);
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
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

		userDAO.addUser(u);
		response.sendRedirect("/crud/user");
	}
}
