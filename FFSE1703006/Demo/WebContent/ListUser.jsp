<jsp:include page="/templates/header.jsp" /> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="namdv.model.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<body>
<div class="container">
		<h3 style="width: 50%; float: left">Users list</h3>
		<p style="width: 50%; float: right; text-align: right">
			<a href="UserController?action=insert"><button type="button" class="btn btn-success">Add New User</button></a>
		</p>
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Username</th>
		      <th scope="col">Email</th>
		      <th scope="col">Sex</th>
		      <th scope="col">Country</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <tbody>
			<c:forEach items="${users}" var="u">  
				<tr>
					<td>${u.getId()}</td>
					<td>${u.getName()}</td>
					<td>${u.getEmail()}</td>  
					<td>${u.getSex()}</td>
					<td>${u.getCountry()}</td>
					<th style="color:#377bb5; letter-spacing: 5px;">
				      <a href="UserController?action=edit&userId=${u.getId()}"><i class="fa fa-pencil"></i></a>
				      <a href="UserController?action=delete&userId=${u.getId()}"><i class="fa fa-trash"></i></a>
				    </th>
				</tr>  
			</c:forEach>
		  </tbody>
		</table>
		<%-- <h1>${lastPage}</h1> --%>
		<div style="margin: 0 auto;">
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="<%= request.getContextPath() %>/UserController?page=1" aria-label="Frist">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">Frist</span>
			      </a>
			    </li>
			    <c:if test="${currentPage != 1}">
			   		<li class="page-item"><a class="page-link" href="<%= request.getContextPath() %>/UserController?page=${currentPage-1}">${currentPage-1}</a></li>
			    </c:if>
			    <li class="page-item active"><a class="page-link" href="<%= request.getContextPath() %>/UserController?page=${currentPage}">${currentPage}</a></li>
			    <c:if test="${currentPage != lastPage}">
			    	<li class="page-item"><a class="page-link" href="<%= request.getContextPath() %>/UserController?page=${currentPage+1}">${currentPage+1}</a></li>
			    </c:if>
			    <li class="page-item">
			      <a class="page-link" href="<%= request.getContextPath() %>/UserController?page=${lastPage}" aria-label="Last">
			        <span aria-hidden="true">&raquo;</span>
			        <span class="sr-only">Last</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
</body>
</html>