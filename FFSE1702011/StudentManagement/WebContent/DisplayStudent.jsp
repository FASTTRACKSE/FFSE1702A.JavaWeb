<%@page import="com.ffse.model.Student"%>
<%@page import="com.ffse.model.DBStudent_Model"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale }" scope="session"/>
<fmt:setLocale value="${lang }" />
<fmt:setBundle basename="i18n.myResource"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
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
             window.location.href = "delete?stdnId="+id;
          }
      }
  </script>
</head>
<body>
	<div class="row" style="float: right;">
		<div class="dropdown">
		  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><fmt:message key="language"/>
		  <span class="caret"></span></button>
		  <ul class="dropdown-menu">
		    <li><a href="?lang=vi_VN">Vietnamese</a></li>
		    <li><a href="?lang=en_US">English</a></li>
		  </ul>
		</div>
	</div>
	
	<table style="margin-bottom: 20px;">
		<tr align = "center">
			<th><fmt:message key="stdnCode"/></th>
			<th><fmt:message key="stdnName"/></th>
			<th><fmt:message key="sex"/></th>
			<th>Hình ảnh</th>
			<th><fmt:message key="addr"/></th>
			<th><fmt:message key="email"/></th>
			<th><fmt:message key="class"/></th>
			<th><fmt:message key="action"/></th>
		</tr>
		<c:set var="count" value="0" scope="page" />
		<c:forEach var="student" items="${listStudent }">
			<tr>
				<td>${student.maSV }</td>
				<td>${student.tenSV }</td>
				<td>${student.gioiTinh }</td>
				<td><img src="<c:out value='${pageContext.request.contextPath}'/>/uploadFiles/${student.hinhAnh }"></td>
				<td>${student.diaChi }</td>
				<td>${student.email }</td>
				<td>${student.lop }</td>
				<td>
					<a href="view?stdnId=${student.id }">
						<span class="glyphicon glyphicon-eye-open"></span>
					</a>
					<a href="edit?stdnId=${student.id }">
						<span class="glyphicon glyphicon-pencil"></span>
					</a>
					<button class="btn-del" onclick="myFunction(${student.id})">
						<span class="glyphicon glyphicon-trash"></span>
					</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<ul>
		<li>
			<a href = "<%= request.getContextPath() %>/list?page=1">≤</a>
			<c:choose>
				<c:when test="${currentPage == 1}">
					<a style="color: red;" href = "<%= request.getContextPath() %>/list?page=${currentPage }">${currentPage }</a>
					<a href = "<%= request.getContextPath() %>/list?page=${currentPage + 1 }">${currentPage + 1 }</a>
					<a href = "<%= request.getContextPath() %>/list?page=${currentPage + 2 }">${currentPage + 2 }</a>
				</c:when>
				<c:when test="${currentPage == lastPage }">
					<a href = "<%= request.getContextPath() %>/list?page=${currentPage - 2 }">${currentPage - 2 }</a>
					<a href = "<%= request.getContextPath() %>/list?page=${currentPage - 1 }">${currentPage - 1 }</a>
					<a style="color: red;" href = "<%= request.getContextPath() %>/list?page=${currentPage }">${currentPage }</a>
				</c:when>
				<c:otherwise>
					<a href = "<%= request.getContextPath() %>/list?page=${currentPage - 1 }">${currentPage - 1 }</a>
					<a style="color: red;" href = "<%= request.getContextPath() %>/list?page=${currentPage }">${currentPage }</a>
					<a href = "<%= request.getContextPath() %>/list?page=${currentPage + 1 }">${currentPage + 1 }</a>
				</c:otherwise>
			</c:choose>
			<a href = "<%= request.getContextPath() %>/list?page=${lastPage }">≥</a>
		</li>
	</ul>
	<a style="color: #fff; background-color: #3c8dbc; border-radius: 5px; padding: 10px 15px; border: 1px solid #fff;" href="new"><fmt:message key="addnew"/></a>
</body>
</html>