<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
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
 <c:url value="/Spring-MVC-H/create" var="urlSave"/>
<h1>List Sinh viên:</h1>
<a href="/Spring-MVC-H/create">Add SV</a>
<br />
<br />


<table>
<tr>


<th>MÃ SV</th>
<th>Họ</th>
<th>Tên</th>
<th>Năm Sinh</th>
<th>Giới Tính</th>
<th>Email</th>
<th>SDT</th>
<th>Địa Chỉ</th>
<th>MÃ Lớp</th>


</tr>

<c:forEach var="sv" items="${sinhvienList}">
<tr style="border: 1px black solid">

<td>${sv.msv}</td>
<td>${sv.hoDem}</td>
<td>${sv.ten}</td>
<td>${sv.namSinh}</td>
<td>${sv.gioitinh}</td>
<td>${sv.email}</td>
<td>${sv.sdt}</td>
<td>${sv.diaChi}</td>
<td>${sv.lop.lophoc}</td>

<td> <a href="${urlView}/${customer.id}">View</a></td>
<td> <a href="/Spring-MVC-H/update/${sv.id}">Edit</a></td>
<td> <a href="/Spring-MVC-H/remove/${sv.id}">Delete</a></td>
</tr>
</c:forEach>

</table>

</body>

</html>