<%@include file="admin/layout/header_view.jsp"%>
<c:set var="jsp_user" value="user" />
<%
	//String u_sex = jsp_user;
	//String u_country = user.country;
%>
<div class="container">
	<div id="path">
		<ol class="breadcrumb">
			<li><a href="<c:url value="/users" />">Admin</a></li>
			<li class="active">Edit User</li>
		</ol>
	</div>
	<h1>Edit Form</h1>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form action="<c:url value="/users/EditUserServlet" />" method="post">
				<input type="hidden" name="id" value="${user.id}" />
				<table>
					<tr>
						<td>Name:</td>
						<td><input type="text" name="name" value="${user.name}" /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password"
							value="${user.password}" /></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="email" name="email" value="${user.email}" /></td>
					</tr>
					<%-- <tr>
						<td>Sex:</td>
						<td><input type="radio" name="sex" value="male"
							<%if (${user.sex}.equals("male")) {
						out.print("checked");
					}%> />Male
							<input type="radio" name="sex" value="female"
							<%if (u_sex.equals("female")) {
						out.print("checked");
					}%> />Female
						</td>
					</tr> --%>
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
						<td colspan="2"><input type="submit" value="Edit User" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>

<%@include file="admin/layout/footer_view.jsp"%>