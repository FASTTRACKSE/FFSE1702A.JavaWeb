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
		<h3 style="float: left">Users list</h3>
		<form style="float: right" class="form-inline" action="" method="GET">
		    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search" required>
		    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
		<div class="dropdown" style="width: 20%; float: right; text-align: center">
		  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Language
		  </button>
		  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
		    <a class="dropdown-item" href="user?lang=vi_VN">Vietnam</a>
		    <a class="dropdown-item" href="user?lang=en_US">English</a>
		  </div>
		</div>
		<p style="float: right; text-align: right">
			<a href="add"><button type="button" class="btn btn-success">Add new user</button></a>
		</p>
		
		<table class="table table-striped" id="table">
		  <thead>
		    <tr>
		      <th scope="col">Mã sinh viên</th>
		      <th scope="col">Họ đệm</th>
		      <th scope="col">Tên</th>
		      <th scope="col">Năm sinh</th>
		      <th scope="col">Giới tính</th>
		      <th scope="col">Email</th>
		      <th scope="col">Điện thoại</th>
		      <th scope="col">Địa chỉ</th>
		      <th scope="col">Mã lớp</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <tbody>
			<c:forEach items="${list}" var="sv" varStatus="loop">
                <tr>
					<%-- <td>${count + loop.count}</td> --%>
					<td>${sv.maSinhVien}</td>
					<td>${sv.hoDem}</td>
					<td>${sv.ten}</td>
					<td>${sv.namSinh}</td>
					<td>${sv.gioiTinh}</td>
					<td>${sv.email}</td>
					<td>${sv.dienThoai}</td>
					<td>${sv.diaChi}</td>  
					<td>${sv.maLop}</td>
					<th style="color:#377bb5; letter-spacing: 5px;">
				      <a href="edit/${sv.maSinhVien}"><i class="fa fa-pencil"></i></a>
				      <a href="delete/${sv.maSinhVien}"><i class="fa fa-trash"></i></a>
				    </th>
				</tr>  
			</c:forEach>
		  </tbody>
		</table>
	</div>
</body>
</html>