<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Model.*,java.util.*"%>
<%@ page import="Model.SachDAO"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	Map<String, String> showLangguage = new SachDAO().vietnameseLanguage();
	String lang = (String) request.getAttribute("lang");
	if (lang != null) {
		if (lang.equals("Vietnamese")) {
			showLangguage = new SachDAO().vietnameseLanguage();
		} else if (lang.equals("English")) {
			showLangguage = new SachDAO().englishLanguage();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sách</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
<style type="text/css">
.dropdown-menu>li>a {
	display: block;
	padding: 3px 20px;
	clear: both;
	font-weight: 400;
	line-height: 1.42857143;
	color: #333;
	white-space: nowrap;
}
table {
    border-collapse: collapse;
}
th{
	border: 4px solid;
	color: white;
	background-color: #61c357;
}

td{
    border: 4px solid #dddddd;
    text-align: left;
  }

}
</style>

</head>
<body>
	<br>
	<div class="container">
		<div class="row" style="float: right;">
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					<%=showLangguage.get("ListSach.Language")%>
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a
						href="DaNgonNgu?lang=Vietnamese<%if (request.getParameter("page") != null) {
				out.print("&page=" + request.getParameter("page").toString());
			}%>">Tiếng việt</a></li>
					<li><a
						href="DaNgonNgu?lang=English<%if (request.getParameter("page") != null) {
				out.print("&page=" + request.getParameter("page").toString());
			}%>">English</a></li>

				</ul>
			</div>
		</div>
		<br>
		<h3 style="width: 50%; float: left"><%=showLangguage.get("ListSach.TieuDe")%></h3>
		<br> <br> <br> <br> <br> <br>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col"><%=showLangguage.get("ListSach.MaSach")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.TenSach")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.TenTacGia")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.TheLoai")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.NhaXB")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.NamXB")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.SoLuong")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.TinhTrang")%></th>
					<th scope="col"><%=showLangguage.get("ListSach.Action")%></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${sach}" var="u">
					<tr>
						<td>${u.getMaSach()}</td>
						<td>${u.getTenSach()}</td>
						<td>${u.getTenTacGia()}</td>
						<td>${u.getTheLoai()}</td>
						<td>${u.getNhaXB()}</td>
						<td>${u.getNamXB()}</td>
						<td>${u.getSoLuong()}</td>
						<td>${u.getTinhTrang()}</td>
						<td style="color: #377bb5; letter-spacing: 5px;"><a
							href="Controller?lang=<%=request.getParameter("lang") %>&action=edit&maSach=${u.getMaSach()}"><i
								class="fa fa-pencil"></i></a> <a
							href="Controller?action=delete&maSach=${u.getMaSach()}"><i
								class="fa fa-trash"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p style="width: 50%; float: right; text-align: right">
			<a
				href="Controller?lang=<%=request.getParameter("lang")%>&action=insert"><button
					type="button" class="btn btn-success"><%=showLangguage.get("ListSach.Add")%></button></a>
		</p>
		<div style="margin: 0 auto;">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link"
						href="<%=request.getContextPath()%>/Controller?page=1&lang=<%=request.getParameter("lang")%>"
						aria-label="Frist"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<c:if test="${currentPage >2 }">
						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/Controller?page=${currentPage-2}&lang=<%=request.getParameter("lang") %>">${currentPage-2}</a></li>
					</c:if>
					<c:if test="${currentPage != 1}">

						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/Controller?page=${currentPage-1}&lang=<%=request.getParameter("lang") %>">${currentPage-1}</a></li>

					</c:if>
					<li class="page-item active"><a class="page-link"
						href="<%= request.getContextPath() %>/Controller?page=${currentPage}&lang=<%=request.getParameter("lang") %>">${currentPage}</a></li>
					<c:if test="${currentPage != lastPage}">
						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/Controller?page=${currentPage+1}&lang=<%=request.getParameter("lang") %>">${currentPage+1}</a></li>

					</c:if>
					<c:if test="${lastPage - currentPage >=2}">

						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/Controller?page=${currentPage+2}&lang=<%=request.getParameter("lang") %>">${currentPage+2}</a></li>

					</c:if>
					<li class="page-item"><a class="page-link"
						href="<%= request.getContextPath() %>/Controller?page=${lastPage}"
						aria-label="Last"> <span aria-hidden="true">&raquo;</span>
					</a></li>

				</ul>
			</nav>
		</div>
	</div>
</body>
</html>