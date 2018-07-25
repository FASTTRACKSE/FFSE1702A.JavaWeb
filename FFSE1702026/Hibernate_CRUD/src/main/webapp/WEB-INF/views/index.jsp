<%@ page language="java" pageEncoding="UTF-8"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title><spring:message code="list.title"></spring:message></title>
</head>
<body>
	<div class="container">
		Language : <a href="?language=en">English</a>| 
		<a
			href="?language=vi_VN">Viet Nam</a>| 
			<a href="?language=ja_JP">Japanese</a>|
		<a href="?language=fr_FR">France</a>|<form action="<c:url value="/j_spring_security_logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="submit" value="Logout" />
	</form>
		<h2>
			<a href="add"><spring:message code="list.add" ></spring:message></a>
		</h2>

		<table class="table">
			<thead>
				<tr>
					<th><spring:message code="list.code" arguments="en"></spring:message></th>
					<th><spring:message code="list.lastname"></spring:message></th>
					<th><spring:message code="list.firstname" text="default text" /></th>
					<th><spring:message code="list.year" /></th>
					<th><spring:message code="list.gender" /></th>
					<th><spring:message code="list.email" /></th>
					<th><spring:message code="list.phone" /></th>
					<th><spring:message code="list.address" /></th>
					<th><spring:message code="list.class" /></th>
					<th><spring:message code="list.action" /></th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${list }">
					<tr>
						<td>${item.code }</td>
						<td>${item.lastname }</td>
						<td>${item.firstname }</td>
						<td>${item.birthday }</td>
						<td><c:choose>
								<c:when test="${item.gender==1 }">Nam</c:when>
								<c:otherwise>Nữ</c:otherwise>
							</c:choose></td>
						<td>${item.email }</td>
						<td>${item.phone }</td>
						<td>${item.address }</td>
						<td>${item.id_class }</td>
						<td><a class="glyphicon glyphicon-pencil"
							href="update/${item.id }"></a> <a
							class="glyphicon glyphicon-trash" href="delete/${item.id }"></a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br />
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
			<c:set var="page" scope="page" value="${param.page }"></c:set>

			<c:if test="${param.page != null }">
				<c:if test="${page<count }">
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
				<c:if test="${page>=count }">
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
				class="page-item  <c:if test="${page==count }">disabled</c:if>">
				<a class="page-link" aria-label="Next"
				href="<c:if test="${param.page !=null }"><c:if test="${page !=count }">list?page=${page+1 }<c:if test="${param.language !=null }">&language=${param.language}</c:if></c:if></c:if>">
					<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
			</a>
			</li>

			<!--Last-->
			<li
				class="page-item  <c:if test="${page!= null }"><c:if test="${page== count }">disabled</c:if></c:if>">
				<a class="page-link"
				href="list?page=${count }<c:if test="${param.language !=null }">&language=${param.language}</c:if>">Last</a>
			</li>

		</ul>
	</nav>
		
		<%-- <c:if test="${param.language !=null }"><t:pagination page="${page}" outerElementClass="pagination"
			queryTmpl='page={page}&language=${param.language }'
			maxDisplayCount="3" />
			</c:if> --%>
			
			
		<%-- <div>
			<fmt:formatNumber value="${page.totalElements}" />
			results
			(1)
		</div> --%>
		Current Locale : ${pageContext.response.locale}
	</div>
	
	
</body>
</html>