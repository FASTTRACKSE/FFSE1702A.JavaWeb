<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="resources.myLabel" />
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><fmt:message key="label.view" /></title>
<link href="assets/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1><fmt:message key="label.userslist" /></h1>



	<table border="1" width="90%">
		<tr>
			<th><fmt:message key="label.id" /></th>
			<th><fmt:message key="label.name" /></th>
			<th><fmt:message key="label.password" /></th>
			<th><fmt:message key="label.email" /></th>
			<th><fmt:message key="label.gender" /></th>
			<th><fmt:message key="label.country" /></th>
			<th><fmt:message key="label.edit" /></th>
			<th><fmt:message key="label.delete" /></th>
		</tr>
		<c:forEach items="${users}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td><a href="Editform?id=${u.getId()}"><fmt:message key="label.edit" /></a></td>
				<td><a href="Deleteuser?id=${u.getId()}"><fmt:message key="label.delete" /></a></td>
			</tr>
		</c:forEach>
	</table>
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="<%=request.getContextPath()%>/Viewusers"> <fmt:message key="label.firstpage" /> </a></li>
			<c:if test="${currentPage > 2}">
				<li><a
					href="Viewusers?page=${currentPage-2}">${currentPage-2}</a></li>
			</c:if>
			<c:if test="${currentPage != 1}">
				<li><a
					href="Viewusers?page=${currentPage-1}">${currentPage-1}</a></li>
			</c:if>
			<li class="active"><a
				href="Viewusers?page=${currentPage}">${currentPage}</a></li>
			<c:if test="${currentPage != lastPage}">
				<li><a
					href="Viewusers?page=${currentPage+1}">${currentPage+1}</a></li>
			</c:if>
			<c:if test="${currentPage < lastPage - 1}">
				<li><a
					href="Viewusers?page=${currentPage+2}">${currentPage+2}</a></li>
			</c:if>
			<li><a
				href="Viewusers?page=${lastPage}">
					<fmt:message key="label.lastpage" /> </a></li>
		</ul>
	</nav>
	<br />
	<a href="Adduserform"><fmt:message key="label.add" /></a>
	<script src="assets/jquery-3.2.1.min.js"></script>
	<script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>