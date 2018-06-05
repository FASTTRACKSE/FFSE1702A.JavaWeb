<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="model.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		Map<String, String> showLanguage = new Language().vietnameseLanguage();
		String lang = (String) session.getAttribute("lang");
		if (lang != null) {
			if (lang.equals("vietnamese")) {
				showLanguage = new Language().vietnameseLanguage();

			} else if (lang.equals("english")) {
				showLanguage = new Language().englishLanguage();
			}
		}
	%>
	<div class="container">
		<h2><%=showLanguage.get("List.Tittle")%></h2>


		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown">
				Dropdown Example <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="/CRUD-MVC/DaNgonNgu?lang=vietnamese">VietNamese</a></li>
				<li><a href="/CRUD-MVC/DaNgonNgu?lang=english">EngLish</a></li>

			</ul>
		</div>
		<h5>
			<a href="/CRUD-MVC/SinhVien/Insert.jsp" style="float: right"><%=showLanguage.get("List.Add")%></a>



		</h5>
		<table class="table table-hover">
			<thead>
				<tr>
					<th><%=showLanguage.get("List.ID")%></th>
					<th><%=showLanguage.get("List.Name")%></th>
					<th><%=showLanguage.get("List.Age")%></th>
					<th><%=showLanguage.get("List.Class")%></th>
					<th><%=showLanguage.get("List.Dress")%></th>
					<th><span class="glyphicon">&#xe019;</span></th>
				</tr>
			</thead>
			<tbody>
				<%
					ArrayList<SinhVien> SV = (ArrayList<SinhVien>) request.getAttribute("listSV");

					for (int j = 0; j < SV.size(); j++) {
				%>
				<tr>
					<td><%=SV.get(j).getMasv()%></td>
					<td><%=SV.get(j).getName()%></td>
					<td><%=SV.get(j).getAge()%></td>
					<td><%=SV.get(j).getCls()%></td>
					<td><%=SV.get(j).getDress()%></td>
					<td><a
						href="/CRUD-MVC/Update?action=edit&ma=<%=SV.get(j).getMasv()%>"><span
							class="glyphicon">&#x270f;</span></a> <a
						href="/CRUD-MVC/Delete?action=delete&ma=<%=SV.get(j).getMasv()%>"><span
							class="glyphicon">&#xe020;</span></a></td>

				</tr>

				<%
					}
				%>
			</tbody>
		</table>
		<%
			int pageid = (int) request.getAttribute("numberpage");
			int maxpageid = (int) request.getAttribute("maxpageid");
		%>
		<ul class="pagination">
			<li class="page-item"><a class="page-link"
				href="InforSV?pageid=1" aria-label="Frist"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<%
				if (pageid != 1) {
			%>
			<li class="page-item"><a class="page-link"
				href="InforSV?pageid=<%=pageid - 1%>"><%=pageid - 1%></a></li>
			<%
				}
			%>
			<li class="page-item active"><a class="page-link"
				href="InforSV?pageid=<%=pageid%>"><%=pageid%></a></li>
			<%
				if (pageid != maxpageid) {
			%>

			<li class="page-item"><a class="page-link"
				href="InforSV?pageid=<%=pageid + 1%>"><%=pageid + 1%></a></li>
			<%
				}
			%>
			<li class="page-item"><a class="page-link"
				href="InforSV?pageid=${maxpageid }" aria-label="Last"> <span
					aria-hidden="true">&raquo;</span>
			</a></li>

		</ul>

	</div>
</body>
</html>