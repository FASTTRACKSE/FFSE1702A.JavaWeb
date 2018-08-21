<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglib/Taglib.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>Sinh Vien</title>
<style type="text/css">
		.empTable  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.empTable td{font-family:Arial, sans-serif;font-size:16px;padding:10px 5px;border-style:solid;border-width:2px;overflow:hidden;word-break:normal;border-color:#ccc;color:#00FF00;background-color:#FF0000;}
		.empTable th{font-family:Arial, sans-serif;font-size:16px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:2px;overflow:hidden;word-break:normal;border-color:#ccc;color:#000000;background-color:#FF4500;}
		.empTable .empTable-4eph{background-color:#C0C0C0}
	</style>
</head>
<body>
<h1> Danh Sách Sinh Viên</h1>
<table class="empTable">
	<tr>
		<th width="80">ID</th>
		<th width="120">Họ</th>
		<th width="120">Tên</th>
		<th width="120">Năm Sinh</th>
		<th width="120">Giới Tính</th>
		<th width="120">Email</th>
		<th width="60">Điện Thoại</th>
		<th width="60">Địa Chỉ</th>
		<th width="60">Mã Lớp</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	
	<c:forEach items="${sinhVienList}" var="SinhVien">
		<tr>
			<td>${SinhVien.id}</td>
			<td>${SinhVien.firstname}</td>
			<td>${SinhVien.lastname}</td>
			<td>${SinhVien.namsinh}</td>
			<td>${SinhVien.gioitinh}</td>
			<td>${SinhVien.email}</td>
			<td>${SinhVien.phone}</td>
			<td>${SinhVien.diachi}</td>
			<td>${SinhVien.malop}</td>
			<td><a href="<c:url value='/viewUpdate/${SinhVien.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/delete/${SinhVien.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	<a href="<c:url value = '/add'/>">Thêm Sinh Viên</a>
	<tag:paginate offset="${offset}" count="${count}" uri="/QuanLySinhVien" next="&raquo;" previous="&laquo;"/>
</body>
</html>