<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
<style type="text/css">
.dropdown-menu>li>a {
	display: block;
	padding: 3px 20px;
	clear: both;
	font-weight: 400;
	line-height: 1.42857143;
	color: #333;
	white-space: nowrap;
}

table {
	border-collapse: collapse;
}

th {
	border: 4px solid;
	color: white;
	background-color: #61c357;
}

td {
	border: 4px solid #dddddd;
	text-align: left;
}
}
</style>
</head>
<body>
	<c:url value="/customer-save" var="urlSave" />
	<c:url value="/customer-view/" var="urlView" />
	<c:url value="/customer-update/" var="urlUpdate" />
	<c:url value="/customerDelete/" var="urlDelete" />
	<h1>List Customer:</h1>
	<a href="${urlSave}">Add Customer</a>
	<br />
	<br />


	<table>
		<tr>
			<th>Id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		
			<c:forEach var="sv" items="${List}">
				<tr style="border: 1px black solid">
					<td>${sv.id}</td>
					<td>${sv.firstName}</td>
					<td>${sv.lastName}</td>
					<td>${sv.email}</td>
					<td><a href="${urlUpdate}/${customer.id}">Edit</a></td>
					<td><a href="${urlDelete}/${customer.id}">Delete</a></td>
				</tr>
			</c:forEach>
		
	</table>

</body>