<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/CRUD-MVC/InforSV?pageid=1">View</a>
<ul class="pagination">
			<%
				int numberpage1 = Integer.parseInt(request.getAttribute("numberpage").toString());
			%>
			<li><a href="/CRUD/Khachhang?pageid=<%=(numberpage1 - 1)%>">&laquo;</a></li>
			<li><a href="/CRUD/Khachhang?pageid=<%=numberpage1%>"><%=numberpage1%></a></li>
			<li><a href="/CRUD/Khachhang?pageid=<%=numberpage1 + 1%>"><%=numberpage1 + 1%></a></li>
			<li><a href="/CRUD/Khachhang?pageid=<%=(numberpage1 + 2)%>">&raquo;</a></li>
		</ul>
</body>
</html>