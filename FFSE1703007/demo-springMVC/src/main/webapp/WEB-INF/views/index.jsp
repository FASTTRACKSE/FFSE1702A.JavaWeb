<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<link
	href="<c:url value="/resources/bootstrap-4.1.2-dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<script
	src="<c:url value="/resources/bootstrap-4.1.2-dist/js/bootstrap.min.js" />"></script>

<title>Student list</title>
</head>
<body>
	<h1>Student list</h1>

	<table class=table>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Nam</th>
			<th>Birth year</th>
			<th>Gender</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Address</th>
			<th>Class</th>
			<th>Action</th>
		</tr>
		<c:forEach var="list" items="${listStudent}">
			<tr>
				<td>${list.id}</td>
				<td>${list.firstName}</td>
				<td>${list.lastName}</td>
				<td>${list.birthYear}</td>
				<td>${list.gender}</td>
				<td>${list.email}</td>
				<td>${list.phone}</td>
				<td>${list.address}</td>
				<td>${list.course.name}</td>
				<td><button class="btn btn-success">Edit</button>
				<a href="delete/${list.id }"><button class="btn btn-danger">Delete</button></a></td>
			</tr>
		</c:forEach>
	</table>

	<a href="create-view">Create student</a>
</body>
</html>