package controller.users;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.dao.UserDao;

import model.bean.Users;

@WebServlet("/AddUser")
@SuppressWarnings("serial")
@MultipartConfig
public class AddUserServelet extends HttpServlet {
	private static final String SAVE_DIR = "uploadFiles";
	public AddUserServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("EditUser.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
		Users u = new Users();
		request.setCharacterEncoding("UTF-8");

		u.setName(request.getParameter("username"));
		u.setYear(request.getParameter("year"));
		u.setClassroom(request.getParameter("classroom"));
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
				u.setFile(fileName);
				filePart.write(savePath + File.separator + fileName);
				UserDao.addUser(u);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}
}