<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.Locale"%>
<%
	//Get the client's Locale
	Locale locale = request.getLocale();
	String language = locale.getLanguage();
	String country = locale.getCountry();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD</title>
</head>
<body>
	<h1>JSP CRUD</h1>
	<%=language+"_"+country %><br><br>
	<a href="Adduserform">Add User</a>
	<a href="Viewusers?page=1">View Users</a>
</body>
</html>