<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Xoá Sinh Viên</title>
</head>
<body>
	<%
		int delResult = (int) request.getAttribute("delResult");
		if(delResult > 0) {
	%>
			<h2 style = "color: red;"><%out.println("Bạn đã xoá thành công!");%></h2>
			<META http-equiv="refresh" content="1;URL=DisplayUser">
	<%
		} else if(delResult < 0) {
	%>
			<h2 style = "color: red;"><%out.println("Xoá thất bại!");%></h2>
	<%
		}
	%>
</body>
</html>