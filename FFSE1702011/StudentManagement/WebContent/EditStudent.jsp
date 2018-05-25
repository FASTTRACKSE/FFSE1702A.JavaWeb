<%@page import="java.sql.ResultSet"%>
<%@page import="com.ffse.model.Student"%>
<%@page import="com.ffse.model.DBStudent_Model"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	
	<!-- Optional theme -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<style>
    td {
      padding: 10px;
      font-size: 15px;
    }
    .bt-change {
      background-color: #2a96f3;
      padding: 10px 15px;
      border-radius: 10px;
      font-size: 15px;
      margin-right: 2%;
      font-weight: 600;
    }
    .bt-change:hover {
      background: #165e88;
      color: white;
    }
    .bt-cancel {
      background: #f1ba57;
      border-radius: 10px;
      padding: 10px 15px;
      font-size: 15px;
      font-weight: 600;
    }
    .bt-cancel:hover {
      background: #e69400;
      color: white;
    }
  </style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Chỉnh sửa</title>
</head>
<body>
	<%
	Student viewStudent = (Student) request.getAttribute("viewStudent");
	%>
	<form method="post">
    <table>
        <tr>
            <td>Mã SV:</td>
            <td><input type="text" name="usercode"  value="<%=viewStudent.getMaSV() %>"></td>
        </tr>
        <tr>
            <td>Tên SV:</td>
            <td><input type="text" name="username"  value="<%=viewStudent.getTenSV() %>"></td>
        </tr>
        <tr>
            <td>Địa chỉ:</td>
            <td><input type="text" name="address"  value="<%=viewStudent.getDiaChi() %>"></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="email" value="<%=viewStudent.getEmail() %>"></td>
        </tr>
        <tr>
            <td>Lớp:</td>
            <td>
            	<%String classes = viewStudent.getLop(); %>
				<select id="classId" name="class">
            		<option value="FFSE1701" <%if(classes.equals("FFSE1701")) { %>selected<% } %>>FFSE1701</option>
            		<option value="FFSE1702" <%if(classes.equals("FFSE1702")) { %>selected<% } %>>FFSE1702</option>
            		<option value="FFSE1703" <%if(classes.equals("FFSE1703")) { %>selected<% } %>>FFSE1703</option>
            		<option value="FFSE1704" <%if(classes.equals("FFSE1704")) { %>selected<% } %>>FFSE1704</option>
            	</select>
			</td>
        </tr>
        <tr>
            <td><input class="bt-change" type="submit" name="update" value="Chỉnh sửa"></td>
            <td><input class="bt-cancel" type="submit" name="cancel" value="Quay lại"></td>
        </tr>
    </table>
  </form>
</body>
	<%-- <%
		int editResult = (int) request.getAttribute("viewStudent");
		if(editResult > 0) {
	%>
			<h2 style = "color: red;"><%out.println("Bạn đã chỉnh sửa thành công!");%></h2>
			<META http-equiv="refresh" content="1;URL=list">
	<%
		} else if(editResult < 0) {
	%>
			<h2 style = "color: red;"><%out.println("Chỉnh sửa thất bại!");%></h2>
	<%
		}
	%> --%>
</html>