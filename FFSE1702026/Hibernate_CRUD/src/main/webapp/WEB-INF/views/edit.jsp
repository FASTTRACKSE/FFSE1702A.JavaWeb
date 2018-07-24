<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Thêm mới User</title>
</head>
<body>
<div class="container">
<h2>Thêm Mới Sinh Viên</h2>
	<form:form action="update" acceptCharset="UTF-8" modelAttribute="student"
		method="post">
		<div class="form-group">
			<form:label path="code">Mã Sinh Viên</form:label>
			<form:input path="code" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="lastname">Họ</form:label>
			<form:input path="lastname" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="firstname">Tên</form:label>
			<form:input path="firstname" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="birthday">Năm Sinh</form:label>
			<form:input path="birthday" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="phone">Số Điện Thoại</form:label>
			<form:input path="phone" title="phone" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="email">Email</form:label>
			<form:input path="email" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="address">Địa Chỉ</form:label>
			<form:input path="address" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="gender">Giới tính</form:label>
			
				<form:radiobutton path="gender" value="0"/>Nữ
				<form:radiobutton path="gender" value="1"/>Nam
			
			
			
		</div>
		<div class="form-group">
			<form:label path="id_class">Lớp</form:label>
			<form:select path="id_class" cssClass="form-control">
				<%-- <form:options items="${list }" itemLabel="${list.name }" itemValue="${list.id }"
					 /> --%>
					<c:forEach var="item" items="${list }">
						<form:option value="${item.id }">${item.name }</form:option>
					</c:forEach> 
			</form:select>


		</div>
		<button type="submit">Update</button>
	</form:form>
	
	</div>
</body>
</html>
