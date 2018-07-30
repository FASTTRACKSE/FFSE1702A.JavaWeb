<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý sinh viên</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
  rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<style>
table, th, td {
  border: 1px solid black;
}
td {
  padding-right: 30px;
}
</style>
</head>
<body style="margin:100px;">
	<h1 style="text-align: center; color: red">View Student:</h1>
	<div style="text-align: center;" >
	<a href="<c:url value="/index" />" >List Student</a>
	</div>
	<table class="table table-hover">
		<tr>
			<th>Id</th>
			<th>id student</th>
			<th>first name</th>
			<th>surname</th>
			<th>birthday</th>
			<th>gender</th>
			<th>email</th>
			<th>phone</th>
			<th>address</th>
			<th>class</th>
		</tr>
		<tr style="border: 1px black solid">
			<td>${student.id}</td>
			<td>${student.id_st}</td>
			<td>${student.firstname}</td>
			<td>${student.surname}</td>
			<td>${student.birthday}</td>
			<td>${student.gender}</td>
			<td>${student.email}</td>
			<td>${student.phone}</td>
			<td>${student.address}</td>
			<td>${student.idClass.nameClass}</td>
		</tr>

	</table>
</body>
</html>