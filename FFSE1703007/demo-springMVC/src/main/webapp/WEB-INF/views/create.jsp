<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<link
	href="<c:url value="/resources/bootstrap-4.1.2-dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<script
	src="<c:url value="/resources/bootstrap-4.1.2-dist/js/bootstrap.min.js" />"></script>

<title>Create student</title>
</head>
<body>

	<div class="row justify-content-md-center">
		<div class="col-md-4">
			<h1>Create Student</h1>
			<form:form action="create" method="post" modelAttribute="student">


				<div class="form-group">
					<label for="firstName">First name </label>
					<form:input class="form-control" path="firstName" />
				</div>


				<div class="form-group">
					<label for="lastName">Last name </label>
					<form:input class="form-control" path="lastName" />
				</div>

				<div class="form-group">
					<label for="birthYear">Birth year</label>
					<form:input class="form-control" path="birthYear" />
				</div>

				<div class="form-group">
					<label for="gender">Gender: </label>
					<form:radiobuttons path="gender" items="${listGender}"/>
				</div>

				<div class="form-group">
					<label for="email">Email </label>
					<form:input class="form-control" path="email" />
				</div>

				<div class="form-group">
					<label for="phone">Phone </label>
					<form:input class="form-control" path="phone" />
				</div>

				<div class="form-group">
					<label for="address">Address </label>
					<form:input class="form-control" path="address" />
				</div>

				<div class="form-group">
					<label for="course.id">Course ID </label>
					<form:select class="form-control" path="course.id">
						<%-- <form:option value="0" label="--- Select ---" /> --%>
						<form:options items="${listCourse}" itemValue="id"	itemLabel="name" />
					</form:select>
				</div>
				<button class="btn btn-primary" type="submit">Submit</button>
			</form:form>
		</div>
	</div>
</body>
</html>