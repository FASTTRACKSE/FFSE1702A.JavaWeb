<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Add user</title>
</head>
<body>
<c:url var="save" value="/save" />
<form:form action="${save }" method="post" modelAttribute="user">
	Name: <form:input path="user_name" />
	<form:errors path="user_name" cssStyle="color:red"></form:errors>
	Email: <form:input path="email"/>
	<form:errors path="email" cssClass="error"></form:errors>
	<button type="submit">Create</button>
</form:form>

</body>
</html>