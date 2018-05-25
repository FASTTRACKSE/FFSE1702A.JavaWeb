<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import= "model.DaNgonNgu"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="model.KhachHang,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% Map<String,String> showLanguage = new DaNgonNgu().vietnameseLanguage();
	String lang = session.getAttribute("lang").toString();
	if(lang.equals("vietnamese"))
	{
		showLanguage = new DaNgonNgu().vietnameseLanguage();
	}else if(lang.equals("english"))
	{
		showLanguage = new DaNgonNgu().englishLanguage();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2><%= showLanguage.get("List.TieuDe") %></h2>

		<div class="container">
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" id="menu1"
					type="button" data-toggle="dropdown">
					<%= showLanguage.get("List.NgonNgu") %> <span class="caret"></span>
				</button>
			<%-- 	//<% if(request.getParameter("lang")!=null){out.print("&lang="+request.getParameter("lang").toString());} --%>
				<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="/CRUD/Khachhang?lang=english<% if(request.getParameter("pageid")!=null){out.print("&pageid="+request.getParameter("pageid").toString());}%>">English</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="/CRUD/Khachhang?lang=vietnamese<% if(request.getParameter("pageid")!=null){out.print("&pageid="+request.getParameter("pageid").toString());}%>">Tiếng Việt</a></li>
				</ul>
			</div>
		</div>
		<h5>
			<a href="/CRUD/Khachhang1/Them.jsp" style="float: right"><%= showLanguage.get("List.Them") %></a> <a href="/CRUD/khachhang/logout" style="float: right">
				<%= showLanguage.get("List.DangXuat") %></a>

		</h5>
		<table class="table table-hover">
			<thead>
				<tr>
					<th><%= showLanguage.get("List.MaKH") %></th>
					<th><%= showLanguage.get("List.HoTen") %></th>
					<th><%= showLanguage.get("List.SoDienThoai") %></th>
					<th><%= showLanguage.get("List.Quan") %></th>
					<th><%= showLanguage.get("List.Email") %></th>
					<th><%= showLanguage.get("List.ChucNang") %></th>
				</tr>
			</thead>
			<tbody>
				<%
					List<KhachHang> kh = (List<KhachHang>) request.getAttribute("listkh");
					for (int i = 0; i < kh.size(); i++) {
				%>
				<tr>
					<td><%=kh.get(i).getMakh()%></td>
					<td><%=kh.get(i).getHoten()%></td>
					<td><%=kh.get(i).getPhone()%></td>
					<td><%=kh.get(i).getQuan()%></td>
					<td><%=kh.get(i).getEmail()%></td>
					<td><a
						href="/CRUD/khachhang/crud?action=userid&id=<%=kh.get(i).getId()%>">
							<span class="glyphicon glyphicon-pencil" style="width: 20px"></span>
					</a> <a
						href="/CRUD/khachhang/crud?action=delete&id=<%=kh.get(i).getId()%>">
							<span class="glyphicon glyphicon-trash" style="width: 20px"></span>
					</a></td>
				</tr>
				<%
					}
				%>

			</tbody>
		</table>

		<ul class="pagination">
			<%
				int numberpage1 = Integer.parseInt(request.getAttribute("numberpage").toString());
			%>
			<li><a href="/CRUD/Khachhang?pageid=<%=(numberpage1 - 1)%><% if(request.getParameter("lang")!=null){out.print("&lang="+request.getParameter("lang").toString());}%>">&laquo;</a></li>
			<li><a href="/CRUD/Khachhang?pageid=<%=numberpage1%><% if(request.getParameter("lang")!=null){out.print("&lang="+request.getParameter("lang").toString());}%>"><%=numberpage1%></a></li>
			<li><a href="/CRUD/Khachhang?pageid=<%=numberpage1 + 1%><% if(request.getParameter("lang")!=null){out.print("&lang="+request.getParameter("lang").toString());}%>"><%=numberpage1 + 1%></a></li>
			<li><a href="/CRUD/Khachhang?pageid=<%=(numberpage1 + 2)%><% if(request.getParameter("lang")!=null){out.print("&lang="+request.getParameter("lang").toString());}%>">&raquo;</a></li>
		</ul>
	</div>
</body>
</html>

