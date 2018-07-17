<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create student</title>
</head>
<body>
	<form:form action="create" method="post" modelAttribute="student">
	First name <form:input path="firstName"/>
		<br>
	Last name <form:input path="lastName"/>
		<br>
	Birth year <form:input path="birthYear"/>
		<br>
	Gender <form:input path="gender"/>
		<br>
	Email <form:input path="email"/>
		<br>
	Phone <form:input path="phone"/>
		<br>
	Address <form:input path="address"/>
		<br>
	Course ID <form:input path="course.name"/>
		<br>
		<input type="submit">
	</form:form>
</body>
</html>