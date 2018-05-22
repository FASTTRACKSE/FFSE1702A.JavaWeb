<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="Model.*,java.util.*"%>
<% Map<String,String> showLangguage = new SachDAO().vietnameseLanguage();
	String lang =(String) request.getAttribute("lang");
if(lang!=null){
	if(lang.equals("Vietnamese")){
		showLangguage = new SachDAO().vietnameseLanguage();
	}else if(lang.equals("English")){
		showLangguage = new SachDAO().englishLanguage();
	}
}
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Sách</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
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
</style>

</head>
<body>
	<div class="container">
		<form action="Controller" method='POST'>
		<% String action = request.getParameter("action"); %>
		<% if (action.equalsIgnoreCase("edit")) {%>
		  <div class="form-group">
		    <h5>Mã sách</h5>
		    <%-- <input type="text" class="form-control" name="maSach" value="<%=u.getMaSach() %>" readonly="readonly"> --%>
		    <input type="text" class="form-control" name="maSach" value="<c:out value="${sach.maSach}" />" readonly="readonly">
		  </div>
		<%}%>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListSach.TenSach") %></h5>
		    <input type="text" class="form-control" name="tenSach" value="<c:out value="${sach.tenSach}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListSach.TenTacGia") %></h5>
		    <input type="text" class="form-control" name="tenTacGia" value="<c:out value="${sach.tenTacGia}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListSach.TheLoai") %></h5>
		    <input type="text" class="form-control" name="theLoai" value="<c:out value="${sach.theLoai}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListSach.NhaXB") %></h5>
		    <input type="text" class="form-control" name="nhaXB" value="<c:out value="${sach.nhaXB}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListSach.NamXB") %></h5>
		    <input type="text" class="form-control" name="namXB" value="<c:out value="${sach.namXB}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListSach.SoLuong") %></h5>
		    <input type="text" class="form-control" name="soLuong" value="<c:out value="${sach.soLuong}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListSach.TinhTrang") %></h5>
		    <input type="text" class="form-control" name="tinhTrang" value="<c:out value="${sach.tinhTrang}" />" required>
		  </div>
		  
		  <button type="submit" name="submit" class="btn btn-primary"><%= showLangguage.get("ListSach.Submit") %></button>
		  <a href="index.jsp"><button type="button" class="btn btn-outline-secondary"><%= showLangguage.get("ListSach.Cancel") %></button></a>
		</form>
	</div>
	
</body>
</html>