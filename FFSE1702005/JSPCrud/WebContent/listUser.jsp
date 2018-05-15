<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="net.roseindia.bean.UserBean"%>
<%@ page import="net.roseindia.dao.UserDao"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>All User</title>
<style>
input {
	border-radius: 8px;
	padding: 8px;
}

table, tr, td {
	border: 0px solid;
	border-collapse: collapse;
}

td, th {
	padding: 25px;
	font-size: 25px
}

th {
	background-color: #5caceb
}

table {
	margin: auto;
}
</style>
</head>
<body style="text-align: center">
	<%
		//UserBean user = new UserBean();
		UserDao dao = new UserDao();
		List<UserBean> userList = dao.getAllUsers();
		//Iterator<UserBean> itr = userList.iterator();
	%>
	<h1>
		USERS LIST: <a href="UserHandler?action=insert"><input
			style="font-size: 20px; color: white; text-align: center; background-color: limegreen;"
			type="submit" value="Add New User" readonly/></a>
	</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Fist Name</th>
			<th>Last Name</th>
			<th>Action</th>
		</tr>
		<tr>
			<%
				/*while(itr.hasNext())
				 {
				 System.out.println(user.getId());*/
				for (UserBean user : userList) {
			%>
			<td><%=user.getId()%></td>
			<td><%=user.getfName()%></td>
			<td><%=user.getlName()%></td>
			<td><a
				href="UserHandler?action=editform&userId=<%=user.getId()%>"><img
					src="https://png.icons8.com/windows/1600/0063B1/edit"
					style="width: 30px;"></a> <a
				href="UserHandler?action=delete&userId=<%=user.getId()%>"><img
					src="https://oit.colorado.edu/sites/default/files/images/trash_0.png"
					style="width: 30px;"></a></td>

		</tr>
		<%
			}
			//}
		%>
	</table>

</body>
</html>