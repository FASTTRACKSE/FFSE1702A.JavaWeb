<jsp:include page="/templates/Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*,java.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="dao.UserDao"%>
<%@ page import="java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% Map<String,String> showLangguage = new UserDao().vietnameseLanguage();
	String lang =(String) request.getAttribute("lang");
if(lang!=null){
	if(lang.equals("Vietnamese")){
		showLangguage = new UserDao().vietnameseLanguage();
	}else if(lang.equals("English")){
		showLangguage = new UserDao().englishLanguage();
	}
}
%>
<body>
	<br>
	<div class="container">
		<div class="row" style="float: right;">
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					<%= showLangguage.get("ListUser.Language") %>
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="DaNgonNgu?lang=Vietnamese<%if(request.getParameter("page")!=null){
						out.print("&page="+request.getParameter("page").toString());
					}%>">Vietnamese</a></li>
					<li><a href="DaNgonNgu?lang=English<%if(request.getParameter("page")!=null){
						out.print("&page="+request.getParameter("page").toString());
					}%>">English</a></li>

				</ul>
			</div>
		</div>
		<br>
		<h3 style="width: 50%; float: left"><%= showLangguage.get("ListUser.TieuDe") %></h3>
		<br> <br> <br> <br> <br> <br>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col"><%= showLangguage.get("ListUser.Name") %></th>
					<th scope="col"><%= showLangguage.get("ListUser.Year") %></th>
					<th scope="col"><%= showLangguage.get("ListUser.Class") %></th>
					<th scope="col"><%= showLangguage.get("ListUser.Sex") %></th>
					<th scope="col"><%= showLangguage.get("ListUser.Country") %></th>
					<th scope="col"><%= showLangguage.get("ListUser.Image") %></th>
					<th scope="col"><%= showLangguage.get("ListUser.Action") %></th>
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
						<td><img src="images/${u.getImage()}" width="120" height="150"></td>
						<th style="color: #377bb5; letter-spacing: 5px;"><a
							href="UserController?lang=<%=request.getParameter("lang") %>&action=edit&userId=${u.getId()}"><i
								class="fa fa-pencil"></i></a> <a
							href="UserController?action=delete&page=<%=request.getParameter("page") %>&userId=${u.getId()}"><i
								class="fa fa-trash"></i></a> </th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p style="width: 50%; float: right; text-align: right">
			<a
				href="UserController?lang=<%=request.getParameter("lang") %>&action=insert"><button
					type="button" class="btn btn-success"><%= showLangguage.get("ListUser.Add") %></button></a>
		</p>
		<%-- <h1>${lastPage}</h1> --%>
		<div style="margin: 0 auto;">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link"
						href="<%=request.getContextPath()%>/UserController?page=1&lang=<%=request.getParameter("lang") %>"
						aria-label="Frist"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<c:if test="${currentPage >=3 }">
						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/UserController?page=${currentPage-2}&lang=<%=request.getParameter("lang") %>">${currentPage-2}</a></li>
					</c:if>
					<c:if test="${currentPage != 1}">

						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/UserController?page=${currentPage-1}&lang=<%=request.getParameter("lang") %>">${currentPage-1}</a></li>

					</c:if>
					<li class="page-item active"><a class="page-link"
						href="<%= request.getContextPath() %>/UserController?page=${currentPage}&lang=<%=request.getParameter("lang") %>">${currentPage}</a></li>
					<c:if test="${currentPage != lastPage}">
					<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/UserController?page=${currentPage+1}&lang=<%=request.getParameter("lang") %>">${currentPage+1}</a></li>
						
					</c:if>
					<c:if test="${lastPage - currentPage >=2}">
					
					<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/UserController?page=${currentPage+2}&lang=<%=request.getParameter("lang") %>">${currentPage+2}</a></li>
						
					</c:if>
					<li class="page-item"><a class="page-link"
						href="<%= request.getContextPath() %>/UserController?page=${lastPage}"
						aria-label="Last"> <span aria-hidden="true">&raquo;</span>
					</a></li>
					
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>