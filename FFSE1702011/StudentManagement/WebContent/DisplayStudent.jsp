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
    td  {
        padding: 15px;
        text-align: center;
    }
    th {
        background-color: #3c8dbc;
        color: #fff;
        border-color: black;
        padding: 10px 15px;
        text-align: center;
    }
    a:hover {
    	text-decoration: none;
    }
    table {
      margin: auto;
      width: 100%;
    }
    .btn-del {
      border: none;
      color: #428bca;
    }
  </style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Danh sách Sinh viên</title>
	<script type="text/javascript">
      function myFunction(id) {
          var check = confirm("Bạn chắc chắn muốn xoá chứ?")
          if(check === true){
             window.location.href = "StudentHandler?action=delete&stdnId="+id;
          }
      }
  </script>
</head>
<body>
	<%
	DBStudent_Model dao = new DBStudent_Model();
	List<Student> stdnList = dao.getListUser();
	%>
	<table style="margin-bottom: 20px;">
		<tr align = "center">
			<th>Mã SV</th>
			<th>Tên SV</th>
			<th>Giới tính</th>
			<th>Địa chỉ</th>
			<th>Email</th>
			<th>Lớp</th>
			<th>Action</th>
		</tr>
		<%for (Student stdn : stdnList) {%>
		<tr>
			<td><%=stdn.getMaSV() %></td>
			<td><%=stdn.getTenSV() %></td>
			<td><%=stdn.getGioiTinh() %></td>
			<td><%=stdn.getDiaChi() %></td>
			<td><%=stdn.getEmail() %></td>
			<td><%=stdn.getLop() %></td>
			<td>
				<a href="view?stdnId=<%=stdn.getId()%>">
					<span class="glyphicon glyphicon-eye-open"></span>
				</a>
				<a href="edit?stdnId=<%=stdn.getId()%>">
					<span class="glyphicon glyphicon-pencil"></span>
				</a>
				<button class="btn-del" onclick="myFunction(<%=stdn.getId() %>)">
					<span class="glyphicon glyphicon-trash"></span>
				</button>
			</td>
		</tr>
		<%}%>
	</table>
	<a style="color: #fff; background-color: #3c8dbc; border-radius: 5px; padding: 10px 15px; border: 1px solid #fff;" href="StudentHandler?action=addnew">Thêm mới</a>
</body>
</html>