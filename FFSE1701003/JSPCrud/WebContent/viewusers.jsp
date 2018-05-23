<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

	<%@page
		import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,com.javatpoint.cus.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ page contentType="text/html; charset=UTF-8"%>
	<%-- <%@ page import="javax.servlet.http.HttpUtils.*" %> --%>
	<h1>Users List</h1>
	<%!
		String strWhere = "";
		String order = "";
		int total = UserDao.getCount();
		int pageSize = 5;
		int currentPage = 0;
		int curPage = 0; // curPage = currentPage - 1;
	%>
	<%
		String spageid = request.getParameter("page");
		if (spageid == null) {
			currentPage = 0;
			curPage = 0;
		} else {
			currentPage = Integer.parseInt(spageid);
			curPage = Integer.parseInt(spageid) - 1;
		}
		List<User> list = UserDao.getAllRecords(strWhere, order, curPage, pageSize);
		request.setAttribute("list", list);

		out.print("<h1>Page No: " + spageid + "</h1>");
	%>

	<table border="1" style="width: 90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sex</th>
			<th>Country</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
				<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<%!String url = "";
	String linkFull = "";
	String paging;%>
	<%
		String reqUrl = request.getRequestURL().toString();
		String queryString = request.getQueryString();
		url = reqUrl + "?" + queryString;

		if (queryString != null) {
			Map<String, String> mapUrl = Paging.getQueryMap(request.getQueryString());
			if (request.getQueryString().contains("page=")) {
				if (request.getParameter("page") != null) {
					mapUrl.put("page", "{page}");
				}
			}
			linkFull = Paging.generateQueryString(mapUrl);
			paging = Paging.generatePaging(total, pageSize, currentPage, linkFull);
		}
	%>
	<%= paging %>
	<br />
	<a href="adduserform.jsp">Add New User</a>

</body>
</html>