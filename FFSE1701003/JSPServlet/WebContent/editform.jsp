<%@include file="admin/layout/header_view.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="jsp_user" value="user" />
<div class="container">
	<div id="path">
		<ol class="breadcrumb">
			<li><a href="<c:url value="/users" />">Admin</a></li>
			<li class="active">Eddit user</li>
		</ol>
	</div>

	<h1>Edit User</h1>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form action="<c:url value="/users/EditUserServlet" />" method="post">
				<input type="hidden" name="id" value="${user.id}" />
				<table class="table table-striped">
					<tr>
						<td>Name:</td>

						<td><input type="text" name="name" value="${user.name}" class="form-control" /></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="email" name="email" value="${user.email}" class="form-control"/></td>
					</tr>
					<tr>
						<td>Sex:</td>
						<td>
							<label class="radio-inline">
								<label><input type="radio" name="sex" value="male" <c:if test="${user.sex == 'male'}">checked="checked"</c:if> />Male</label>
							</label>
							<label class="radio-inline">
								<label><input type="radio" name="sex" value="female" <c:if test="${user.sex == 'sex'}">checked="checked"</c:if> />Female</label>
							</label>
						</td>
					</tr>
					<tr>
						<td>Country:</td>
						<td>
							<select id="cb_country" name="country" class="form-control">
									<option value="Việt Nam" ${user.country == 'Việt Nam' ? 'selected' : ''}>Việt Nam</option>
									<option value="Nhật" ${user.country == 'Nhật' ? 'selected' : ''}>Nhật</option>
									<option value="Pháp" ${user.country == 'Pháp' ? 'selected' : ''}>Pháp</option>
									<option value="Mỹ" ${user.country == 'Mỹ' ? 'selected' : ''}>Mỹ</option>
									<option value="Thụy Sỹ" ${user.country == 'Thụy Sỹ' ? 'selected' : ''}>Thụy Sỹ</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" class="btn btn-primary" value="Edit User" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>

<%@include file="admin/layout/footer_view.jsp"%>