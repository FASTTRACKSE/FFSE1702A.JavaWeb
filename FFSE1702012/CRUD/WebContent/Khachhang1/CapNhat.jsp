<%@page import="model.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Cập nhật thông tin khách hàng</h2>
		<%
			ResultSet rs = (ResultSet) request.getAttribute("Khachhang22");
		%>
		<form class="form-horizontal" action="/CRUD/khachhang/add.update?action=update"
			method="Post">
			<div class="form-group">
				<div class="col-sm-10">
					<input type="hidden" class="form-control"
						value="<%=rs.getInt("Id")%>" name="idKH">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Mã Khách
					Hàng:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						value="<%=rs.getString("Makh")%>" placeholder="Mã Khách Hàng"
						name="maKH">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Tên Khách
					Hàng:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						value="<%=rs.getString("Username")%>"
						placeholder="Tên Khách Hàng" name="name">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="sdt">Số Điện
					Thoại:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						value="<%=rs.getString("Phone")%>" placeholder="Số Điện Thoại"
						name="phone">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Email:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						value="<%=rs.getString("Email")%>" placeholder="Email"
						name="email">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Quận:</label>
				<div class="col-sm-10">
					<select class="form-control" name="quan">
						<%
							if (rs.getString("Quan").length() > 0) {
						%>
						<option value="Hải Châu"
							<%if (rs.getString("Quan").equals("Hải Châu")) {%> selected
							<%}%>>Hải Châu</option>
						<option value="Thanh Khê"
							<%if (rs.getString("Quan").equals("Thanh Khê")) {%> selected
							<%}%>>Thanh Khê</option>
						<option value="Liên Chiểu"
							<%if (rs.getString("Quan").equals("Liên Chiểu")) {%> selected
							<%}%>>Liên Chiểu</option>
						<option value="Ngũ Hành Sơn"
							<%if (rs.getString("Quan").equals("Ngũ Hành Sơn")) {%> selected
							<%}%>>Ngũ Hành Sơn</option>
						<!-- 		<option value="">Thanh Khê</option>
						<option value="">Liên Chiểu</option>
						<option value="">Ngũ Hành Sơn</option>
						 -->
						<%
							}
						%>


					</select>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-success">Update</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>