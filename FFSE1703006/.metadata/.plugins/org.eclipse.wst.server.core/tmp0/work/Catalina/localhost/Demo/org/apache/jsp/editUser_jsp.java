/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.8
 * Generated at: 2018-05-10 03:23:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import namdv.model.UserModel;
import namdv.model.*;
import java.util.*;

public final class editUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("namdv.model");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("namdv.model.UserModel");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/templates/header.jsp", out, false);
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<h2>Update User Info</h2>\r\n");
      out.write("\t\t<hr>\r\n");
      out.write("\t\t<h6>Please edit the input values and submit to update the record.</h6>\r\n");
      out.write("\t\t");

		String id=request.getParameter("id");
		User u = UserModel.getRecordById(id);
		if (request.getParameter("submit") != null) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String sex=request.getParameter("sex");
			String country=request.getParameter("country");
			u = new User(id, username, password, email, sex, country);
			if (!username.isEmpty() && UserModel.update(u) > 0) {
				response.sendRedirect("index.jsp");
				System.out.println("Sửa thành công!");
			} else {
				out.print("<p style = 'color: red'>Sorry, an error occurred!</p>");
				System.err.println("Sửa thất bại!");
			}
		}
		
      out.write("\r\n");
      out.write("\t\t<form action=\"\" method='POST'>\r\n");
      out.write("\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t    <h5>Username</h5>\r\n");
      out.write("\t\t    <input type=\"text\" class=\"form-control\" name=\"username\" value=\"");
      out.print(u.getName() );
      out.write("\" required>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t    <h5>Password</h5>\r\n");
      out.write("\t\t    <input type=\"password\" class=\"form-control\" name=\"password\" value=\"");
      out.print(u.getPassword() );
      out.write("\" required>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t    <h5>Email</h5>\r\n");
      out.write("\t\t    <input type=\"email\" class=\"form-control\" name=\"email\" value=\"");
      out.print(u.getEmail() );
      out.write("\" required>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t    <h5>Sex</h5>\r\n");
      out.write("\t\t    <div class=\"custom-control custom-radio custom-control-inline\">\r\n");
      out.write("\t          <input class=\"form-check-input\" type=\"radio\" name=\"sex\" value=\"Male\" ");
 if(u.getSex().equals("Male")) { out.print("checked"); } 
      out.write(" required>\r\n");
      out.write("\t          <label class=\"form-check-label\">Male</label>\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t        <div class=\"custom-control custom-radio custom-control-inline\">\r\n");
      out.write("\t          <input class=\"form-check-input\" type=\"radio\" name=\"sex\" value=\"Female\" ");
 if(u.getSex().equals("Female")) { out.print("checked"); } 
      out.write(" required>\r\n");
      out.write("\t          <label class=\"form-check-label\">Female</label>\r\n");
      out.write("\t        </div>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t    <h5>Country</h5>\r\n");
      out.write("\t\t    <select class=\"custom-select mr-sm-2\" name=\"country\" required>\r\n");
      out.write("\t\t       <option value=\"\">Choose...</option>\r\n");
      out.write("\t\t       <option value=\"Vietnam\" ");
 if(u.getCountry().equals("Vietnam")) { out.print("selected"); } 
      out.write(">Vietnam</option>\r\n");
      out.write("\t\t       <option value=\"USA\" ");
 if(u.getCountry().equals("USA")) { out.print("selected"); } 
      out.write(">USA</option>\r\n");
      out.write("\t\t       <option value=\"China\" ");
 if(u.getCountry().equals("China")) { out.print("selected"); } 
      out.write(">China</option>\r\n");
      out.write("\t\t    </select>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t  <button type=\"submit\" name=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n");
      out.write("\t\t  <a href=\"index.jsp\"><button type=\"button\" class=\"btn btn-outline-secondary\">Cancel</button></a>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
