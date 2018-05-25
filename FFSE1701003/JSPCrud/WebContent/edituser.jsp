<%@page import="com.javatpoint.dao.UserDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<%response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8"); %>
<%-- <jsp:setProperty property="*" name="u"/> --%>

<jsp:setProperty property="name" name="u" value='<%=request.getParameter("name")%>'/>
<jsp:setProperty property="password" name="u" value='<%=request.getParameter("password")%>'/>
<jsp:setProperty property="email" name="u" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty property="sex" name="u" value='<%=request.getParameter("sex")%>'/>
<jsp:setProperty property="country" name="u" value='<%=request.getParameter("country")%>'/>
<%
int i=UserDao.update(u);
response.sendRedirect("viewusers.jsp");
%>