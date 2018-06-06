<jsp:include page="/templates/header.jsp" /> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale}" scope="session" />

<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="namdv.resources.messages" />

<body>
<div style="margin-top: 5px;" class="container">
		<h3 style="float: left"><fmt:message key="users_list"/></h3>
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
			<a href="user/add"><button type="button" class="btn btn-success"><fmt:message key="add_new_user"/></button></a>
		</p>
		<script type="text/javascript" class="init">
			/* $(document).ready(function() {
				$('#table').DataTable();
			} ); */
		</script>
		<table class="table table-striped" id="table">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col"><fmt:message key="username"/></th>
		      <th scope="col">Email</th>
		      <th scope="col"><fmt:message key="sex"/></th>
		      <th scope="col"><fmt:message key="country"/></th>
		      <th scope="col">Avatar</th>
		      <th scope="col"><fmt:message key="action"/></th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:set var="count" value="${(currentPage - 1) * 10}" scope="page" />
			<c:forEach items="${listUser}" var="u" varStatus="loop">
                <tr>
					<td>${count + loop.count}</td>
					<td>${u.getName()}</td>
					<td>${u.getEmail()}</td>  
					<td>${u.getSex()}</td>
					<td>${u.getCountry()}</td>
					<td><img src="<c:out value="${pageContext.request.contextPath}" />/uploadFiles/avatar.png" height="50" width="50"></td>
					<th style="color:#377bb5; letter-spacing: 5px;">
				      <a href="<c:out value="${pageContext.request.contextPath}" />/user/edit?id=${u.getId()}"><i class="fa fa-pencil"></i></a>
				      <a href="<c:out value="${pageContext.request.contextPath}" />/user/delete?id=${u.getId()}"><i class="fa fa-trash"></i></a>
				    </th>
				</tr>  
			</c:forEach>
		  </tbody>
		</table>
		<div style="margin: 0 auto;">
			<c:if test="${not empty param.search}" >
		    	<c:set var="search" value="&search=${param.search}" scope="page" />
			</c:if>
			<c:if test="${empty param.search}" >
		    	<c:set var="search" value="" scope="page" />
			</c:if>
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="user?page=1${search}" aria-label="Frist">
			        <span aria-hidden="true">&laquo; <fmt:message key="first_page"/></span>
			        <span class="sr-only">Frist</span>
			      </a>
			    </li>
			    <c:if test="${currentPage > 2}">
			   		<li class="page-item"><a class="page-link" href="user?page=${currentPage-2}${search}">${currentPage-2}</a></li>
			    </c:if>
			    <c:if test="${currentPage != 1}">
			   		<li class="page-item"><a class="page-link" href="user?page=${currentPage-1}${search}">${currentPage-1}</a></li>
			    </c:if>
			    <li class="page-item active"><a class="page-link" href="user?page=${currentPage}${search}">${currentPage}</a></li>
			    <c:if test="${currentPage != lastPage}">
			    	<li class="page-item"><a class="page-link" href="user?page=${currentPage+1}${search}">${currentPage+1}</a></li>
			    </c:if>
			    <c:if test="${currentPage < lastPage - 1}">
			    	<li class="page-item"><a class="page-link" href="user?page=${currentPage+2}${search}">${currentPage+2}</a></li>
			    </c:if>
			    <li class="page-item">
			      <a class="page-link" href="user?page=${lastPage}${search}" aria-label="Last">
			        <span aria-hidden="true"><fmt:message key="last_page"/> &raquo;</span>
			        <span class="sr-only">Last</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
</body>
</html>