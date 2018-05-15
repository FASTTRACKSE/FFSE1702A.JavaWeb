<%@page import="java.sql.ResultSet"%>
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
    table,tr,td,th{
                border: 1px solid;
                border-collapse: collapse;
            }
            td  {
                padding: 15px;
                text-align: left;
            }
            th {
                background-color: #3c8dbc;
                color: #fff;
                border-color: black;
                padding: 10px 15px;
                text-align: center;
            }
            table {
              margin: auto;
              width: 100%;
            }
    </style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Thông tin sinh viên</title>
</head>
<body>
	<%ResultSet rs = (ResultSet)request.getAttribute("viewResult");%>
	<table style="margin-bottom: 20px;">
		<%while(rs.next()) {%>
    	<tr>
    		<th>Mã SV</th>
    		<td><%=rs.getString("User_Code") %></td>
    	</tr>
    	<tr>
    		<th>Tên SV</th>
    		<td><%=rs.getString("User_Name") %></td>
    	</tr>
    	<tr>
    		<th>Giới tính</th>
    		<td><%=rs.getString("Sex") %></td>
    	</tr>
    	<tr>
    		<th>Địa chỉ</th>
    		<td><%=rs.getString("Address") %></td>
    	</tr>
    	<tr>
    		<th>Email</th>
    		<td><%=rs.getString("Email") %></td>
    	</tr>
    	<tr>
    		<th>Lớp</th>
    		<td><%=rs.getString("Class") %></td>
    	</tr>
    	<%} %>
    </table>
   	<a style="background-color: #3c8dbc; border-radius: 5px; padding: 10px 15px; color:#fff; border: 1px solid #fff;" href="http://localhost:8080/FFSE1702011/DisplayUser"><span class="glyphicon glyphicon-arrow-left"></span></a>
</body>
</html>