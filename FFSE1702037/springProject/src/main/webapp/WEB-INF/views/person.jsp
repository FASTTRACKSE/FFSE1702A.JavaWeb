<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person Page</title>
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
	Language :
	<a href="?language=en<%if(request.getParameter("page")!=null){
						out.print("&page="+request.getParameter("page").toString());
					}%>">English</a>|
	<a href="?language=vi_VN<%if(request.getParameter("page")!=null){
						out.print("&page="+request.getParameter("page").toString());
					}%>">Viet Nam</a>|

	<h3>
		<spring:message code="List" text="default text" />
	</h3>
	<a href="<c:url value="/add" />">add sinh vien</a>
	<c:if test="${!empty listPersons}">
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
				<th width="60"><spring:message code="Edit" text="default text" /></th>
				<th width="60"><spring:message code="Delete"
						text="default text" /></th>
			</tr>
			<c:forEach items="${listPersons}" var="person">
				<tr>
					<td>${person.id}</td>
					<td>${person.maSV}</td>
					<td>${person.hoDem}&nbsp;${ person.ten }</td>
					<td>${person.lop.tenLop}</td>
					<td>${person.namSinh}</td>
					<td>${person.diaChi}</td>
					<td>${person.email}</td>
					<td>${person.gioiTinh}</td>
					<td>${person.dienThoai}</td>
					<td><a href="<c:url value='/edit/${person.id}' />">Edit</a></td>
					<td><a href="<c:url value='/remove/${person.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<h1>Danh sách lớp</h1>
<c:forEach items="${listLop}" var="lop">
<a href="<c:url value='/listLop/${lop.id}'  />">${lop.tenLop}</a>
</c:forEach>


	<div class="pagination">
		<a href="">&laquo;</a> 
		<c:if test="${currentPage != 1}">		
		<a href="/springProject?page=${currentPage-1}">${currentPage-1}</a>
		</c:if>
		<a href="/springProject?page=${currentPage}">${currentPage}</a>
		<c:if test="${currentPage != lastPage}">		
		<a href="/springProject?page=${currentPage+1}">${currentPage+1}</a>
		</c:if>
		<a href="/springProject?page=${lastPage}">&raquo;</a>
	</div>
</body>
</html>