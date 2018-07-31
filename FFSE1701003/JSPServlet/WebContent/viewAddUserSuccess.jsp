<%@include file="admin/layout/header_view.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
	<div id="path">
		<ol class="breadcrumb">
			<li><a href="<c:url value="/users" />">Admin</a></li>
			<li class="active">Users</li>
		</ol>
	</div>
	<div class='alert alert-success alert-dismissable' role='alert'>
		<button type='button' class='close' data-dismiss='alert'>
			<span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span>
		</button>
		<p>Thêm mới thành công!</p>
	</div>
	
	<h1>Add New User</h1>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form action="<c:url value="/users/AddUserServlet" />" method="post">
				<table class="table table-striped">
					<tr>
						<td>Name:</td>

						<td><input type="text" name="name" class="form-control" /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password" class="form-control"/></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="email" name="email" class="form-control"/></td>
					</tr>
					<tr>
						<td>Sex:</td>
						<td><input type="radio" name="sex" value="male" />Male <input
							type="radio" name="sex" value="female" />Female</td>
					</tr>
					<tr>
						<td>Country:</td>
						<td><select id="cb_country" name="country" class="form-control">
								<option value="Việt Nam">Việt Nam</option>
								<option value="Nhật">Nhật</option>
								<option value="Pháp">Pháp</option>
								<option value="Mỹ">Mỹ</option>
								<option value="Thụy Sỹ">Thụy Sỹ</option>
						</select></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" class="btn btn-primary" value="Add User" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>

<%@include file="admin/layout/footer_view.jsp"%>