<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.dao.UserDao, model.bean.User,util.Paging"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@include file="admin/layout/header_view.jsp" %>

<div class="container">
	<div id="path">
		<ol class="breadcrumb">
			<li><a href="users">Admin</a></li>
			<li class="active">Users</li>
		</ol>
	</div>
	<form id="frm_list" method="get" action="">
		<div class="frm-search-box form-inline pull-left">
			<label class="mr-sm-2" for="">Từ khóa: </label> <input
				class="form-control mb-2 mr-sm-2 mb-sm-0" type="text" value=""
				name="q" id="txtkeyword" placeholder="Keyword" value="" />&nbsp;
			<button type="submit" id="_btnSearch" class="btn btn-success">Tìm kiếm</button>
			<select name="action" class="form-control" id="cboActive">
				<option value="all">Tất cả</option>
				<option value="1">Hiển thị</option>
				<option value="0">Ẩn</option>
			</select>
		</div>
	</form>
	<div class="pull-right">
		<a href="users/ViewAddUserServlet" class="btn btn-success button"><i
			class="fa fa-plus" aria-hidden="true"></i> Thêm mới</a>
	</div>
	<div class="clearfix"></div>

	<h1>Users List</h1>

	<table class="table table-striped">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sex</th>
			<th>Country</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${listUser}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td><a href="users/ViewEditUserServlet?id=${u.getId()}">Edit</a></td>
				<td><a href="users/DeleteUserServlet?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<div class="clearfix"></div>
	<div class="pull-right">${paging}</div>
</div>

<%@include file="admin/layout/footer_view.jsp" %>