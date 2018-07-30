<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Quản lý sinh viên </title>

<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body style="margin:100px;">
  <h1 style="text-align: center;color:red ">Edit Student</h1>
  <div style="text-align: center ">
  <a href="<c:url value="/index" />">List Student</a>
  </div>
  <c:url value="/Update" var="Update" />
  <form:form action="${Update}" method="POST" modelAttribute="student" class="form-horizontal">

		<form:hidden path="id" class="form-control" />
		<div class="form-group">
			<label class="col-sm-2 control-label">ID student</label>
			<div class="col-sm-10">
				<form:input path="id_st" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">First name</label>
			<div class="col-sm-10">
				<form:input path="firstname" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Surname</label>
			<div class="col-sm-10">
				<form:input path="surname" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Birthday</label>
			<div class="col-sm-10">
				<form:input path="birthday" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Gender</label>
			<div class="col-sm-10">
				<form:radiobutton path="gender" value="male"/> Male
				<form:radiobutton path="gender" value="female"/> Female 
			
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<form:input path="email" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Phone</label>
			<div class="col-sm-10">
				<form:input path="phone" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Address</label>
			<div class="col-sm-10">
				<form:input path="address" class="form-control" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">id class</label>
			<div class="col-sm-10">
				<form:select path="idClass.idClass" class="form-control">
					<c:if test="${not empty listClass}">
						<c:forEach var="classST" items="${listClass}">
							<option value="${classST.idClass} ">${classST.nameClass}</option>
						</c:forEach>
					</c:if>
				</form:select>
			</div>
		</div>
		<button type="submit" class="btn btn-success">Submit</button>
	</form:form>
</body>
</html>