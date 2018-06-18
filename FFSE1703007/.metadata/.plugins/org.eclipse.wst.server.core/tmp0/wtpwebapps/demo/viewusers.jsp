<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
<link href="assets/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@page import="crud.dao.UserDao,crud.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Users List</h1>



	<table border="1" width="90%">
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
		<c:forEach items="${users}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td><a href="Editform?id=${u.getId()}">Edit</a></td>
				<td><a href="Deleteuser?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="<%=request.getContextPath()%>/Viewusers"> First
					Page </a></li>
			<c:if test="${currentPage > 2}">
				<li><a
					href="Viewusers?page=${currentPage-2}">${currentPage-2}</a></li>
			</c:if>
			<c:if test="${currentPage != 1}">
				<li><a
					href="Viewusers?page=${currentPage-1}">${currentPage-1}</a></li>
			</c:if>
			<li class="active"><a
				href="Viewusers?page=${currentPage}">${currentPage}</a></li>
			<c:if test="${currentPage != lastPage}">
				<li><a
					href="Viewusers?page=${currentPage+1}">${currentPage+1}</a></li>
			</c:if>
			<c:if test="${currentPage < lastPage - 1}">
				<li><a
					href="Viewusers?page=${currentPage+2}">${currentPage+2}</a></li>
			</c:if>
			<li><a
				href="Viewusers?page=${lastPage}">
					Last Page </a></li>
		</ul>
	</nav>
	<br />
	<a href="Adduserform">Add New User</a>
	<script src="assets/jquery-3.2.1.min.js"></script>
	<script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>