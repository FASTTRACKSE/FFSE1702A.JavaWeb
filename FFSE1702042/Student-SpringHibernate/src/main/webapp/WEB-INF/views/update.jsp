<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>

<title>Update</title>
</head>
<body>
	<container>
	<div class="row justify-content-md-center">
		<div class="col-md-4">
			<h1>Edit Student</h1>
			<c:url value="/update" var="update" />
			<form:form action="${update }" method="post" modelAttribute="student">
				
				<div class="form-group">
					<label for="firstName">ID </label>
					<form:input class="form-control" path="id" readonly="true"/>
				</div>

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
					<form:radiobuttons path="gender" items="${listGender }" />
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
					<label for="lop.id">Class </label>
					<form:select class="form-control" path="lop.id">
						<%-- <form:option value="0" label="--- Select ---" /> --%>
						<form:options items="${listLop}" itemValue="id"
							itemLabel="name" />
					</form:select>
				</div>
				<button class="btn btn-primary" type="submit">Update</button>
			</form:form>
		</div>
	</div>
	</container>
</body>
</html>