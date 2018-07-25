<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<title>Login Page</title>
</head>
<body style="text-align: left;margin-left:50px;">
	<form action="home" method="post" class="form-horizontal">
		<div class="form-group">
			<div class="col-sm-3"><h2>Enter your name</h2></div>		
		</div>
		<input type="text" name="userName" class="form-control"style="width: 300px;"> <br>
		<input class="btn btn-success btnSpace" type="submit" value="Login">
	</form>
</body>
</html>