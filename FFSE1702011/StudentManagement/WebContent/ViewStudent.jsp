<%@page import="java.sql.ResultSet"%>
<%@page import="com.ffse.model.Student"%>
<%@page import="com.ffse.model.DBStudent_Model"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
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
	<%
	Student viewStudent = (Student) request.getAttribute("viewStudent");
	%>
	<table style="margin-bottom: 20px;">
    	<tr>
    		<th>Mã SV</th>
    		<td><%=viewStudent.getMaSV() %></td>
    	</tr>
    	<tr>
    		<th>Tên SV</th>
    		<td><%=viewStudent.getTenSV() %></td>
    	</tr>
    	<tr>
    		<th>Giới tính</th>
    		<td><%=viewStudent.getGioiTinh() %></td>
    	</tr>
    	<tr>
    		<th>Địa chỉ</th>
    		<td><%=viewStudent.getDiaChi() %></td>
    	</tr>
    	<tr>
    		<th>Email</th>
    		<td><%=viewStudent.getEmail() %></td>
    	</tr>
    	<tr>
    		<th>Lớp</th>
    		<td><%=viewStudent.getLop() %></td>
    	</tr>
    </table>
   	<a style="background-color: #3c8dbc; border-radius: 5px; padding: 10px 15px; color:#fff; border: 1px solid #fff;" href="list"><span class="glyphicon glyphicon-arrow-left"></span></a>
</body>
</html>