<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Animal"%>
<%@page import="model.dao.AnimalDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Animal Information</title>
<style>
body{
background-color: pink;
}
</style>
</head>
<body>
	<h1 align="center">Animal List</h1>
	<table border="1" width="80%" align="center">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Sex</th>
			<th>Age</th>
			<th colspan="3">Menu</th>
		</tr>
		<c:forEach var="animal" items="${listAnimal}">
			<tr>
				<td>${animal.ID}</td>
				<td>${animal.name}</td>
				<td>${animal.sex}</td>
				<td>${animal.age}</td>
				<td><a href="update.jsp?id=${animal.ID}">Edit</a> &nbsp;&nbsp;
					<a href="DeleteAnimal?id=${animal.ID}">Delete</a> &nbsp;&nbsp; <a	 
					href="insert.jsp">Insert</a></td>
			</tr>
		</c:forEach>
	</table>
	<center>
	<%
	
	int total = (int) request.getAttribute("total");
	int last = (int) request.getAttribute("last");
	int pages;
	if (request.getParameter("pages") == null) {
		pages = 1;
	}
	else {
		pages = (int) Integer.parseInt(request.getParameter("pages"));
	}
	%>
		<div>
		<% if(pages<3){ %>
		<a href=ShowAllAnimal?pages=1>1</a>
			<a href=ShowAllAnimal?pages=2>2</a> 
			<a href=ShowAllAnimal?pages=3>3</a>
			<a href=ShowAllAnimal?pages=<%=pages+3%>>Next</a>
			<% } else if(pages>(total/last)-1){ %>
			<a href=ShowAllAnimal?pages=<%=pages-3%>>Previous</a>
			<a href=ShowAllAnimal?pages=<%=(pages)-2%>><%=(pages)-2%></a>
			<a href=ShowAllAnimal?pages=<%=(pages)-1%>><%=(pages)-1%></a> 
			<a href=ShowAllAnimal?pages=<%=(pages)%>><%=(pages)%></a>
			<% } else if(pages==3){ %>
				<a href=ShowAllAnimal?pages=<%=pages-1%>><%=pages-1%></a>
				<a href=ShowAllAnimal?pages=<%=3%>><%=3%></a>
		<a href=ShowAllAnimal?pages=<%=pages+1%>><%=pages+1%></a>
			<a href=ShowAllAnimal?pages=<%=pages+3%>>Next</a>
			<% } else{ %>
			
			<a href=ShowAllAnimal?pages=<%=pages-3%>>Previous</a>
			<a href=ShowAllAnimal?pages=<%=pages-1%>><%=pages-1%></a>
			<a href=ShowAllAnimal?pages=<%=pages%>><%=pages%></a> 
			<a href=ShowAllAnimal?pages=<%=pages+1%>><%=pages+1%></a>
			<a href=ShowAllAnimal?pages=<%=pages+3%>>Next</a>
<% } %>
		</div>
		
	</center>

</body>
</html>