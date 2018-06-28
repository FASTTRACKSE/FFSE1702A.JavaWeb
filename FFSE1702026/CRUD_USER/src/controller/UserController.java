package controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.UserDAO;
import model.KhachHang;

/**
 * Servlet implementation class UserController
 */
//@WebServlet("/") 
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO UD;
	private boolean isMultipart;
	private String filePath;
	private int maxFileSize = 50 * 1024;
	private int maxMemSize = 4 * 1024;
	private File file;

	public UserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
		filePath = getServletContext().getInitParameter("file-upload");
		UD = new UserDAO(jdbcURL, jdbcUsername, jdbcPassword);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getPathInfo();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			switch (action) {
			case "/list": {
				listUser(request, response);
				break;
			}
			case "/new": {
				showNewForm(request, response);
				break;
			}
			case "/insert": {
				addUser(request, response);
				break;
			}
			case "/edit": {
				showUpdateForm(request, response);
				break;
			}
			case "/update": {
				updateUser(request, response);
				break;
			}
			case "/delete": {
				deleteUser(request, response);
				break;
			}
			case "/upload": {
				uploadFile(request, response);
				break;
			}
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/Form.jsp").forward(request, response);
	}

	protected void addUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		String language = "";
		language = request.getParameter("language");
		String maKH = request.getParameter("idKH");
		String name = request.getParameter("name");
		String sdt = request.getParameter("phone");
		String email = request.getParameter("email");
		String quan = request.getParameter("quan");
		KhachHang kh = new KhachHang(maKH, name, sdt, email, quan);
		UD.insertUser(kh);
		if (language.equals("")) {
			response.sendRedirect("list");

		} else {
			response.sendRedirect("list?language=" + language);
		}
	}

	protected void showUpdateForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String id = request.getParameter("id");
		KhachHang kh = UD.getInfor(id);
		request.setAttribute("kh", kh);
		request.getRequestDispatcher("/Form.jsp").forward(request, response);
	}

	protected void updateUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {
		String language = "";
		language = request.getParameter("language");
		String maKH = request.getParameter("idKH");
		String name = request.getParameter("name");
		String sdt = request.getParameter("phone");
		String email = request.getParameter("email");
		String quan = request.getParameter("quan");
		KhachHang kh = new KhachHang(maKH, name, sdt, email, quan);
		UD.updateUser(kh, maKH);
		if (language.equals("")) {
			response.sendRedirect("list");

		} else {
			response.sendRedirect("list?language=" + language);
		}
	}

	protected void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {
		String language = "";
		if (request.getParameter("language") != null) {
			language = request.getParameter("language");
		}
		String id = request.getParameter("id");
		UD.deleteUser(id);
		response.sendRedirect("list");
		if (language.equals("")) {
			response.sendRedirect("list");

		} else {
			response.sendRedirect("list?language=" + language);
		}
	}

	public void listUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException, ServletException {

		int count = UD.count();
		List<KhachHang> kh = new ArrayList<>();
		if (request.getParameter("page") == null) {
			kh = UD.getAll(1, 10);

		} else {
			int st = Integer.parseInt(request.getParameter("page"));
			int sta = (st - 1) * 10;
			int end = 10;
			kh = UD.getAll(sta, end);
		}
		request.setAttribute("count", count);
		request.setAttribute("kh", kh);
		request.getRequestDispatcher("/Main.jsp").forward(request, response);

	}

	public void uploadFile(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		isMultipart = ServletFileUpload.isMultipartContent(request);
		response.setContentType("text/html");
		java.io.PrintWriter out = response.getWriter();
		if (!isMultipart) {
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet upload</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<p>No file uploaded</p>");
			out.println("</body>");
			out.println("</html>");
			return;
		}
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// maximum size that will be stored in memory
		factory.setSizeThreshold(maxMemSize);
		// Location to save data that is larger than maxMemSize.
		factory.setRepository(new File("c:\\temp")); // Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// maximum file size to be uploaded.
		upload.setSizeMax(maxFileSize);
		try {
			// Parse the request to get file items.
			List fileItems = upload.parseRequest(request);

			// Process the uploaded file items
			Iterator i = fileItems.iterator();
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet upload</title>");
			out.println("</head>");
			out.println("<body>");
			while (i.hasNext()) {
				FileItem fi = (FileItem) i.next();
				if (!fi.isFormField()) {
					// Get the uploaded file parameters
					String fieldName = fi.getFieldName();
					String fileName = fi.getName();
					String contentType = fi.getContentType();
					boolean isInMemory = fi.isInMemory();
					long sizeInBytes = fi.getSize();
					// Write the file
					if (fileName.lastIndexOf("\\") >= 0) {
						file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
					} else {
						file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
					}
					fi.write(file);
					out.println("Uploaded Filename: " + fileName + "<br>");
					
					out.println("<img src='/CRUD_USER/Upload/"+fileName+"' />");
		
				}
			}
			out.println("</body>");
			out.println("</html>");
		} catch (Exception ex) {
			System.out.println(ex);
		}

	}

}
