<jsp:include page="/templates/header.jsp" /> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="namdv.model.*,namdv.lang.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
//Locale.setDefault(new Locale("vi","VN"));
ResourceBundle resourcebundle = ResourceBundle.getBundle(request.getAttribute("messages").toString());
%>
<body>
<div class="container">
		<h3 style="width: 30%; float: left"><%= resourcebundle.getString("users_list") %></h3>
		<div class="dropdown" style="width: 20%; float: right; text-align: right">
		  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Language
		  </button>
		  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
		    <a class="dropdown-item" href="UserController?lang=vi">Vietnam</a>
		    <a class="dropdown-item" href="UserController?lang=en">English</a>
		  </div>
		</div>
		<p style="width: 40%; float: right; text-align: right">
			<a href="UserController?<%= resourcebundle.getString("lang") %>&action=insert"><button type="button" class="btn btn-success"><%= resourcebundle.getString("add_new_user") %></button></a>
		</p>
		
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col"><%= resourcebundle.getString("username") %></th>
		      <th scope="col">Email</th>
		      <th scope="col"><%= resourcebundle.getString("sex") %></th>
		      <th scope="col"><%= resourcebundle.getString("country") %></th>
		      <th scope="col"><%= resourcebundle.getString("action") %></th>
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
				      <a href="UserController?<%= resourcebundle.getString("lang") %>&action=edit&userId=${u.getId()}"><i class="fa fa-pencil"></i></a>
				      <a href="UserController?<%= resourcebundle.getString("lang") %>&action=delete&userId=${u.getId()}"><i class="fa fa-trash"></i></a>
				    </th>
				</tr>  
			</c:forEach>
		  </tbody>
		</table>
		<div style="margin: 0 auto;">
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="<%= request.getContextPath() %>/UserController?<%= resourcebundle.getString("lang") %>" aria-label="Frist">
			        <span aria-hidden="true">&laquo; <%= resourcebundle.getString("first_page") %></span>
			        <span class="sr-only">Frist</span>
			      </a>
			    </li>
			    <c:if test="${currentPage > 2}">
			   		<li class="page-item"><a class="page-link" href="<%= request.getContextPath() %>/UserController?<%= resourcebundle.getString("lang") %>&page=${currentPage-2}">${currentPage-2}</a></li>
			    </c:if>
			    <c:if test="${currentPage != 1}">
			   		<li class="page-item"><a class="page-link" href="<%= request.getContextPath() %>/UserController?<%= resourcebundle.getString("lang") %>&page=${currentPage-1}">${currentPage-1}</a></li>
			    </c:if>
			    <li class="page-item active"><a class="page-link" href="<%= request.getContextPath() %>/UserController?<%= resourcebundle.getString("lang") %>&page=${currentPage}">${currentPage}</a></li>
			    <c:if test="${currentPage != lastPage}">
			    	<li class="page-item"><a class="page-link" href="<%= request.getContextPath() %>/UserController?<%= resourcebundle.getString("lang") %>&page=${currentPage+1}">${currentPage+1}</a></li>
			    </c:if>
			    <c:if test="${currentPage < lastPage - 1}">
			    	<li class="page-item"><a class="page-link" href="<%= request.getContextPath() %>/UserController?<%= resourcebundle.getString("lang") %>&page=${currentPage+2}">${currentPage+2}</a></li>
			    </c:if>
			    <li class="page-item">
			      <a class="page-link" href="<%= request.getContextPath() %>/UserController?<%= resourcebundle.getString("lang") %>&page=${lastPage}" aria-label="Last">
			        <span aria-hidden="true"><%= resourcebundle.getString("last_page") %> &raquo;</span>
			        <span class="sr-only">Last</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
</body>
</html>