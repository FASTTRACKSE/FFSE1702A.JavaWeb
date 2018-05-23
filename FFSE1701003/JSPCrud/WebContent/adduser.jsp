<%@page import="com.javatpoint.dao.UserDao"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<% response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8"); %>
<!-- Set property by jstp -->
<jsp:setProperty property="*" name="u" />

<!-- set property -->


<%-- <jsp:setProperty property="name" name="u" value='<%=request.getParameter("username")%>'/>
<jsp:setProperty property="password" name="u" value='<%=request.getParameter("password")%>'/>
<jsp:setProperty property="email" name="u" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty property="sex" name="u" value='<%=request.getParameter("sex")%>'/>
<jsp:setProperty property="country" name="u" value='<%=request.getParameter("country")%>'/>
 --%>
<%
	int i = UserDao.save(u);

	if (i > 0) {
		response.sendRedirect("adduser-success.jsp");
	} else {
		response.sendRedirect("adduser-error.jsp");
	}
%>
