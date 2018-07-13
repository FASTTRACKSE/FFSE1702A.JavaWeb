<jsp:include page="/templates/Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="model.dao.UserDao"%>
<%@ page import="java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="resources.messages" />
<body>
	<br>
	<div class="container">
		<div class="row" style="float: right;">
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					<fmt:message key="lang"/>
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="?lang=vi_VN">Vietnamese</a></li>
					<li><a href="?lang=en_US">English</a></li>

				</ul>
			</div>
		</div>
		<br>
		<h3 style="width: 50%; float: left"><fmt:message key="users_list"/></h3>
		<br> <br> <br> <br> <br> <br>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col"><fmt:message key="username"/></th>
					<th scope="col"><fmt:message key="year"/></th>
					<th scope="col"><fmt:message key="class"/></th>
					<th scope="col"><fmt:message key="sex"/></th>
					<th scope="col"><fmt:message key="country"/></th>
					<th scope="col"><fmt:message key="image"/></th>
					<th scope="col"><fmt:message key="action"/></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="u">
					<tr>
						<td>${u.getId()}</td>
						<td>${u.getName()}</td>
						<td>${u.getYear()}</td>
						<td>${u.getClassroom()}</td>
						<td>${u.getSex()}</td>
						<td>${u.getCountry()}</td>
						<td><img src="<c:out value="${pageContext.request.contextPath}" />/uploadFiles/${u.getFile()}" height="50" width="50"></td>
					<th style="color:#377bb5; letter-spacing: 5px;">
						<th style="color: #377bb5; letter-spacing: 5px;"><a
							href="EditUser?lang=<%=request.getParameter("lang") %>&userId=${u.getId()}"><i
								class="fa fa-pencil"></i></a> <a
							href="DeleteUser?action=delete&page=${currentPage }&userId=${u.getId()}"><i
								class="fa fa-trash"></i></a> </th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p style="width: 50%; float: right; text-align: right">
			<a
				href="AddUser?lang=<%=request.getParameter("lang") %>"><button
					type="button" class="btn btn-success"><fmt:message key="add_new_user"/></button></a>
		</p>
		<%-- <h1>${lastPage}</h1> --%>
		<div style="margin: 0 auto;">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link"
						href="<%=request.getContextPath()%>/ViewUser?page=1"
						aria-label="Frist"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<c:if test="${currentPage >=3 }">
						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/ViewUser?page=${currentPage-2}">${currentPage-2}</a></li>
					</c:if>
					<c:if test="${currentPage != 1}">

						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/ViewUser?page=${currentPage-1}">${currentPage-1}</a></li>

					</c:if>
					<li class="page-item active"><a class="page-link"
						href="<%= request.getContextPath() %>/ViewUser?page=${currentPage}">${currentPage}</a></li>
					<c:if test="${currentPage != lastPage}">
					<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/ViewUser?page=${currentPage+1}">${currentPage+1}</a></li>
						
					</c:if>
					<c:if test="${lastPage - currentPage >=2}">
					
					<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/ViewUser?page=${currentPage+2}">${currentPage+2}</a></li>
						
					</c:if>
					<li class="page-item"><a class="page-link"
						href="<%= request.getContextPath() %>/ViewUser?page=${lastPage}"
						aria-label="Last"> <span aria-hidden="true">&raquo;</span>
					</a></li>
					
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>