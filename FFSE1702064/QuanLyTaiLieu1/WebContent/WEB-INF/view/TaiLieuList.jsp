<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tai Lieu</title>
</head>
<body>
<table class="empTable">
	<tr>
		<th width="80">ID</th>
		<th width="120">Ten tai lieu</th>
		<th width="120">Loai tai lieu</th>
		<th width="120">Mo ta</th>
		<th width="120">Quyen truy cap</th>
		<th width="120">Phong ban</th>
		<th width="120">Tai ve</th>
	</tr>
	<c:forEach items="${taiLieuList}" var="TaiLieu">
		<tr>
			<td>${TaiLieu.id}</td>
			<td>${TaiLieu.name}</td>
			<td>${TaiLieu.loaiTaiLieu}</td>
			<td>${TaiLieu.moTa}</td>
			<td>${TaiLieu.quyenTruyCap}</td>
			<td>${TaiLieu.phongBan}</td>
			<td>${TaiLieu.taiVe}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>