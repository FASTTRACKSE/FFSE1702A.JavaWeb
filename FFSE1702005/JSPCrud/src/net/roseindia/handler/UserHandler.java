package net.roseindia.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.roseindia.dao.UserDao;
import net.roseindia.bean.UserBean;

public class UserHandler extends HttpServlet {    
    private static String INSERT = "/user.jsp";
    private static String Edit = "/edit.jsp";
    private static String UserRecord = "/listUser.jsp";
    private UserDao dao;

    public UserHandler() {
        super();
        dao = new UserDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
        String redirect="";
        String uId = request.getParameter("userid");    
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
			
        if(!((uId)== null) && action.equalsIgnoreCase("insert"))
        {
        	int id = Integer.parseInt(uId);
        	int age = Integer.parseInt(uAge);
        	UserBean user = new UserBean();
        	user.setId(id);
            user.setfName(request.getParameter("firstName"));
            user.setlName(request.getParameter("lastName"));
            user.setage(age);
            user.setgender(request.getParameter("gender"));
        	dao.addUser(user);
        	List<UserBean> list = UserDao.getRecords(start, total);
 			request.setAttribute("users", list);  
 			redirect = UserRecord;
           	System.out.println("Record Added Successfully");
        }
        else if (action.equalsIgnoreCase("delete")){
            String userId = request.getParameter("userId");
            int uid = Integer.parseInt(userId);
            dao.removeUser(uid);
            List<UserBean> list = UserDao.getRecords(start, total);
 			request.setAttribute("users", list);
            redirect = UserRecord;
            System.out.println("Record Deleted Successfully");
        }else if (action.equalsIgnoreCase("editform")){        	
        	redirect = Edit;            
        } else if (action.equalsIgnoreCase("edit")){
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
            List<UserBean> list = UserDao.getRecords(start, total);
 			request.setAttribute("users", list);
            redirect = UserRecord;
            System.out.println("Record updated Successfully");
         } else if (action == null || action.equalsIgnoreCase("listUser")) {
 			List<UserBean> list = UserDao.getRecords(start, total);
 			request.setAttribute("users", list);
 			redirect = UserRecord;
         } else {
            redirect = INSERT;
        }

        RequestDispatcher rd = request.getRequestDispatcher(redirect);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}