<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Edit user</title>
</head>
<body>
<c:url var="update" value="/update" />
<form:form action="${update }" method="post" modelAttribute="user">
	<form:hidden path="user_id"/>
	Name: <form:input path="user_name" />
	Email: <form:input path="email"/>
	<button type="submit">Update</button>

</form:form>

</body>
</html>