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

<title>Create student</title>
<style type="text/css">
.dropdown-menu>li>a {
    display: block;
    padding: 3px 20px;
    clear: both;
    font-weight: 200;
    line-height: 1.42857143;
    color: #333;
    white-space: nowrap;
}
.button1{
    font-size:15px;
    background:orange;
    padding:0.5em 0.9em;
    border:none;
    border-radius:6px;
    transition:0.5s;
}
.button1 span{
    position:relative;
    display:inline-block;
    cursor:pointer;
    transition:0.5s;
}
.button1 span:after{
    content:"\00bb";
    position:absolute;
    right:-15px;
    transition:0.5s;
    opacity:0; 
}
.button1:hover span{
    padding-right:20px;
}
.button1:hover span:after{
    opacity:1;
    right:0;
}
</style>
</head>
<body>

	<div class="row justify-content-md-center">
		<div class="col-md-4">
			<h1>Thêm sinh viên</h1>
			<form:form action="create" method="post" modelAttribute="student">


				<div class="form-group">
					<label for="firstName">Họ đệm </label>
					<form:input class="form-control" path="firstName"/>
				</div>


				<div class="form-group">
					<label for="lastName">Tên </label>
					<form:input class="form-control" path="lastName" />
				</div>

				<div class="form-group">
					<label for="birthYear">Năm sinh</label>
					<form:input class="form-control" path="birthYear"/>
				</div>

				<div class="form-group">
					<label for="gender">Giới tính: </label>
					<form:radiobuttons path="gender" items="${listGender }"/>
				</div>

				<div class="form-group">
					<label for="email">Email </label>
					<form:input class="form-control" path="email" />
				</div>

				<div class="form-group">
					<label for="phone">Điện thoại </label>
					<form:input class="form-control" path="phone"/>
				</div>

				<div class="form-group">
					<label for="address">Địa chỉ </label>
					<form:input class="form-control" path="address"/>
				</div>

				<div class="form-group">
					<label for="lop.id">Lớp </label>
					<form:select class="form-control" path="lop.id">
						<%-- <form:option value="0" label="--- Select ---" /> --%>
						<form:options items="${listLop}" itemValue="id"
							itemLabel="name" />
					</form:select>
				</div>
				<button class="button1" type="submit"><span>Thêm</span></button>
			</form:form>
		</div>
	</div>
	
</body>
</html>