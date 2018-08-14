package controller.user;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.dao.UserDao;
import model.bean.UserBean;

@WebServlet("/UpdateUser")
@MultipartConfig
public class UpdateUser extends HttpServlet {
	private static String Edit = "/edit.jsp";
	private static String UserRecord = "/listUser.jsp";
	private UserDao dao;

	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "upload";

	public UpdateUser() {
		super();
		dao = new UserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String redirect = "";
		String uAge = request.getParameter("age");
		String action = request.getParameter("action");

		String startid = request.getParameter("page");
		if (startid == null) {
			startid = "1";
		}
		int start = Integer.parseInt(startid);
		int total = 5;
		if (start != 1) {
			start = start - 1;
			start = start * total + 1;
		}
		int lastPage = (UserDao.countRecords() / total) + 1;
		request.setAttribute("currentPage", startid);
		request.setAttribute("lastPage", lastPage);		

		if (action.equalsIgnoreCase("editform")) {
			redirect = Edit;
		} else if (action.equalsIgnoreCase("edit")) {
			String userId = request.getParameter("userId");
			int uid = Integer.parseInt(userId);
			int age = Integer.parseInt(uAge);
			UserBean user = new UserBean();
			user.setId(uid);
			user.setfName(request.getParameter("firstName"));
			user.setlName(request.getParameter("lastName"));
			user.setage(age);
			user.setgender(request.getParameter("gender"));
			dao.editUser(user);
			doAdd(request, response);
			List<UserBean> list = UserDao.getRecords(start, total);
			request.setAttribute("users", list);
			redirect = UserRecord;
			System.out.println("Record updated Successfully");
		}

		RequestDispatcher rd = request.getRequestDispatcher(redirect);
		rd.forward(request, response);
	}
	
	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		// gets absolute path of the web application
//				String appPath = request.getServletContext().getRealPath("");
//
//				// constructs path of the directory to save uploaded file
//				String savePath = appPath + File.separator + SAVE_DIR;
//				System.out.println(savePath);
//
//				// creates the save directory if it does not exists
//				File fileSaveDir = new File(savePath);
//				if (!fileSaveDir.exists()) {
//					fileSaveDir.mkdir();
//				}
//
//				Part filePart = request.getPart("uploadFile");
//				String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
//
//				filePart.write(savePath + File.separator + fileName);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
