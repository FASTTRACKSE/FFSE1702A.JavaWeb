<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="resources.myLabel" />

<a href="Viewusers"><fmt:message key="label.view" /></a>
<br />

<h1><fmt:message key="label.add" /></h1>
<form action="Adduser" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td><fmt:message key="label.name" /></td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td><fmt:message key="label.password" /></td>
			<td><input type="password" name="password" /></td>
		</tr>
		<tr>
			<td><fmt:message key="label.email" /></td>
			<td><input type="email" name="email" /></td>
		</tr>
		<tr>
			<td><fmt:message key="label.gender" /></td>
			<td><input type="radio" name="sex" value="male" />Male <input
				type="radio" name="sex" value="female" />Female</td>
		</tr>
		<tr>
			<td><fmt:message key="label.country" /></td>
			<td><select name="country" style="width: 155px">
					<option>Vietnam</option>
					<option>Laos</option>
					<option>Cambodia</option>
					<option>Thailand</option>
					<option>Other</option>
			</select></td>
		</tr>
		<tr>
		<td>Avatar</td>
		<td><input type="file" name="avatar"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Add User" name="doAdd" /></td>
		</tr>
	</table>
</form>