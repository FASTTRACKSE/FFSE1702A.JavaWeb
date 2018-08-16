<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add sinhvien</title>
<style type="text/css">
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}

.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body>


					<table class="tg">
			<tr>
				<th width="80">ID</th>
				<th width="120"><spring:message code="IdSV" text="default text" /></th>
				<th width="120"><spring:message code="Name" text="default text" /></th>
				<th width="120"><spring:message code="Class"
						text="default text" /></th>
				<th width="120"><spring:message code="Year" text="default text" /></th>
				<th width="120"><spring:message code="Address"
						text="default text" /></th>
				<th width="120"><spring:message code="Email"
						text="default text" /></th>
				<th width="120"><spring:message code="Sex" text="default text" /></th>
				<th width="120"><spring:message code="Phone"
						text="default text" /></th>
			</tr>
			<c:forEach var="person" items="${persons }">
				<tr>
					<td>${person.id}</td>
					<td>${person.maSV}</td>
					<td>${person.hoDem}&nbsp;${person.ten }</td>
					<td>${person.lop.tenLop}</td>
					<td>${person.namSinh}</td>
					<td>${person.diaChi}</td>
					<td>${person.email}</td>
					<td>${person.gioiTinh}</td>
					<td>${person.dienThoai}</td>
					
				</tr>
			</c:forEach>
		</table>
				
</body>
</html>