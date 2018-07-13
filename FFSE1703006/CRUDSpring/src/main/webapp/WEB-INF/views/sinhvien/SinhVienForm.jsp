<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>~ JunBjn ~</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
</head>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  

<body>
	<div class="container">
		<form:form method="POST" action="/CRUDSpring/save" commandName="sinhVien">
		<c:if test="${!empty sinhVien.hoDem}">
			<div class="form-group">
			  <h5>Mã sinh viên</h5>
			  <form:input class="form-control" path="maSinhVien" readonly="true" disabled="true" />
			  <form:hidden path="maSinhVien" />
			</div>
		</c:if>
		    <div class="form-group">
		      <h5>Họ đệm</h5>
		      <form:input class="form-control" path="hoDem"/>
		    </div>
		    <div class="form-group">
		      <h5>Tên</h5>
		      <form:input class="form-control" path="ten"/>
		    </div>
		    <div class="form-group">
		      <h5>Năm sinh</h5>
		      <form:input class="form-control" path="namSinh"/>
		    </div>
		    <div class="form-group">
		      <h5>Giới tính</h5>
		      <div class="custom-control custom-radio custom-control-inline">
		    	<form:radiobutton class="form-check-input" path="gioiTinh" value="Nam" label="Nam" />
	          </div>
	          <div class="custom-control custom-radio custom-control-inline">
	            <form:radiobutton class="form-check-input" path="gioiTinh" value="Nữ" label="Nữ" />
	          </div>
		    </div>
		    <div class="form-group">
		      <h5>Email</h5>
		      <form:input class="form-control" path="email"/>
		    </div>
		    <div class="form-group">
		      <h5>Điện thoại</h5>
		      <form:input class="form-control" path="dienThoai"/>
		    </div>
		    <div class="form-group">
		      <h5>Địa chỉ</h5>
		      <form:input class="form-control" path="diaChi"/>
		    </div>
		    <div class="form-group">
		      <h5>Mã lớp</h5>
		      <form:input class="form-control" path="maLop"/>
		    </div>
		  <button type="submit" name="submit" class="btn btn-primary">Submit</button>
		  <a href="/CRUDSpring"><button type="button" class="btn btn-outline-secondary">Cancel</button></a>
		</form:form>
	</div>
</body>
</html>