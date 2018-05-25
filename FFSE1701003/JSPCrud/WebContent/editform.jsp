<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
	<%@ page contentType="text/html; charset=UTF-8" %>
	<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

	<%
		String id = request.getParameter("id");
		User u = UserDao.getRecordById(Integer.parseInt(id));
		String u_sex = u.getSex();
		String u_country = u.getCountry();
	%>

	<h1>Edit Form</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=u.getName()%>" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"
					value="<%=u.getPassword()%>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=u.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="sex" value="male"
					<% if(u_sex.equals("male")) {out.print("checked");} %> />Male <input
					type="radio" name="sex" value="female"
					<% if(u_sex.equals("female")) {out.print("checked");} %> />Female
				</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select id="cb_country" name="country">
						<option value="India">India</option>
						<option value="Pakistan">Pakistan</option>
						<option value="Afghanistan">Afghanistan</option>
						<option value="Berma">Berma</option>
						<option value="Other">Other</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit User" /></td>
			</tr>
		</table>
	</form>
	
	<script type="text/javascript">
		var country = "<%= u_country %>";
		//cbo_Selected("cb_country", country);
		
		// Function selected combobox by id and value
		function cbo_Selected(id, value){
			var obj = document.getElementById(id);
			alert(id);
			for(i=0;i<obj.length;i++){
				if(obj[i].value==value){
					obj.selectedIndex=i;	
				}
			}
		}
	</script>
</body>
</html>


</body>
</html>