<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Xoá Sinh Viên</title>
</head>
<body>
	<c:if test="${delStudent > 0 }">
			<h2 style = "color: red;"><%out.println("Bạn đã xoá thành công!");%></h2>
			<META http-equiv="refresh" content="1;URL=DisplayStudent">
	</c:if>
</body>
</html>