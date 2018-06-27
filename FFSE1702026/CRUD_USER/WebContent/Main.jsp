<%@page import="model.*,dao.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:choose>
	<c:when test="${not empty param.language}">
		<c:set var="language" value="${param.language}" scope="session" />
	</c:when>
	<c:otherwise>
		<c:if test="${empty param.language}">
			<c:set var="language" value="${pageContext.request.locale}"
				scope="session" />
		</c:if>
	</c:otherwise>
</c:choose>

<fmt:setLocale value="${language}" />
<fmt:setBundle basename="resources.myLabel" />
<!DOCTYPE html>
<html>
<head>
<title><fmt:message key="main.title" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../assets/flags/flags.css" type="text/css" />
</head>

<body>

	<div class="container">
		<div>

			<a style="float: right; margin: 10px"
				href="list?language=en_US<c:if test="${param.page !=null }" ><c:out value="&page=${param.page }" /></c:if>"><img src="../assets/flags/blank.gif" class="flag flag-us" alt="Tiếng Việt" /></a> <a style="float: right; margin: 10px"
				href="list?language=vi_VN<c:if test="${param.page !=null }" ><c:out value="&page=${param.page }" /></c:if>"><img src="../assets/flags/blank.gif" class="flag flag-vn" alt="English" /></a>
		</div>
		<div style="float: none; margin-top: 100px">
			<h2>
				<fmt:message key="main.list" />
				<a
					href="Add.jsp<c:if test="${param.laguage!=null }"><c:out value="&language=${param.laguage}"></c:out></c:if>"
					style="float: right"> <fmt:message key="main.add" /></a>
			</h2>
		</div>
		<table id="myTable" class="display" style="width: 100%">

			<thead>
				<tr>
					<th><fmt:message key="main.id" /></th>
					<th><fmt:message key="main.name" /></th>
					<th><fmt:message key="main.township" /></th>
					<th><fmt:message key="main.phone" /></th>
					<th>Email</th>
					<th><fmt:message key="main.action" /></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="kh" items="${kh }">
					<tr>
						<td>${kh.maKH }</td>
						<td>${kh.name }</td>
						<td>${kh.phone }</td>
						<td>${kh.quan }</td>
						<td>${kh.email }</td>
						<td><a class="glyphicon glyphicon-pencil"
							href="edit?id=${kh.maKH }<c:if test="${param.language !=null }">&language=${param.language}</c:if>"></a><a
							style="float: right" class="glyphicon glyphicon-trash"
							href="detele?id=${kh.maKH }<c:if test="${param.language!=null }">&language=${param.language}</c:if>"></a></td>

					</tr>
				</c:forEach>

			</tbody>
			<tfoot>
				<tr>
					<th><fmt:message key="main.id" /></th>
					<th><fmt:message key="main.name" /></th>
					<th><fmt:message key="main.township" /></th>
					<th><fmt:message key="main.phone" /></th>
					<th>Email</th>
					<th><fmt:message key="main.action" /></th>
				</tr>
			</tfoot>
		</table>

	</div>
	<!--Pagination -->
	<i><fmt:message key="main.page" /></i>
	<nav aria-label="pagination example">
		<ul class="pagination pagination-circle pg-blue mb-0">

			<!--First-->
			<li
				class="page-item <c:set var="page" scope="page" value="${param.page}"/>  
			<c:choose>  
			    <c:when test="${page==1}">disabled</c:when>  
			    <c:when test="${page==null}">disabled</c:when>    
			</c:choose>">
				<a class="page-link"
				href="list?page=1<c:if test="${param.language !=null }">&language=${param.language}</c:if>">First</a>
			</li>

			<!--Arrow left-->
			<li
				class="page-item <c:choose>  
			    <c:when test="${page==1}">disabled</c:when>  
			    <c:when test="${page==null}">disabled</c:when>    
			</c:choose>">
				<a class="page-link" aria-label="Previous"
				href="<c:if test="${param.page !=null }" ><c:if test="${param.page !=1 }" >list?page=${param.page-1 }<c:if test="${param.language !=null }">&language=${param.language}</c:if></c:if></c:if>">
					<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
			</a>
			</li>

			<!--Numbers-->
			<c:set var="count" scope="page" value="${count }"></c:set>

			<c:if test="${param.page != null }">
				<c:if test="${page<count/10 }">
					<c:if test="${page==1 }">
						<c:forEach var="j" begin="1" end="3">
							<li class="page-item <c:if test="${j==1 }">active</c:if>"><a
								href="list?page=${j }<c:if test="${param.language !=null }">&language=${param.language}</c:if>"
								class="page-link">${j }</a></li>
						</c:forEach>
					</c:if>

					<c:if test="${page!=1 }">
						<c:forEach var="j" begin="${page-1 }" end="${page+1 }">
							<li class="page-item <c:if test="${j==page }">active</c:if>"><a
								href="list?page=${j }<c:if test="${param.language !=null }">&language=${param.language}</c:if>"
								class="page-link">${j }</a></li>
						</c:forEach>
					</c:if>

				</c:if>
				<c:if test="${page>=count/10 }">
					<c:forEach var="j" begin="${page-1 }" end="${page }">
						<li class="page-item <c:if test="${j==page }">active</c:if>"><a
							href="list?page=${j }<c:if test="${param.language !=null }">&language=${param.language}</c:if>"
							class="page-link">${j }</a></li>
					</c:forEach>
				</c:if>

			</c:if>
			<c:if test="${param.page == null }">
				<c:forEach var="j" begin="1" end="3">
					<li class="page-item <c:if test="${j==page }">active</c:if>"><a
						href="list?page=${j }<c:if test="${param.language !=null }">&language=${param.language}</c:if>"
						class="page-link">${j }</a></li>
				</c:forEach>
			</c:if>






			<!--Arrow right-->
			<li
				class="page-item  <c:if test="${page==Math.round(count/10+1) }">disabled</c:if>">
				<a class="page-link" aria-label="Next"
				href="<c:if test="${param.page !=null }"><c:if test="${page !=count/10 }">list?page=${page+1 }<c:if test="${param.language !=null }">&language=${param.language}</c:if></c:if></c:if>">
					<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
			</a>
			</li>

			<!--Last-->
			<li
				class="page-item  <c:if test="${page!= null }"><c:if test="${page== Math.round(count/10+1) }">disabled</c:if></c:if>">
				<a class="page-link"
				href="list?page=${Math.round(count/10+1) }<c:if test="${param.language !=null }">&language=${param.language}</c:if>">Last</a>
			</li>

		</ul>
	</nav>

	<script>
		$(document).ready(function() {
			$('#myTable').DataTable();
		});
	</script>


</body>