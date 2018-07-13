<%@page import="model.bean.Animal"%>
<%@page import="model.dao.AnimalDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update JSP</title>
</head>
<body>
	<%
	String idinput = request.getParameter("id");
	int id = Integer.parseInt(idinput);
		Animal animal = new Animal();
		AnimalDAO animalDAO = new AnimalDAO();
		animal = animalDAO.getAnimalID(id);
	%>
	<form action="UpdateAnimal" method="POST">
		<h1>Update New Animal</h1>
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=animal.getID()%>"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"
					value="<%=animal.getName()%>"></td>
			</tr>
			<tr>
				<td>Sex</td>
				<td><input type="text" name="sex"
					value="<%=animal.getSex()%>"></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="age"
					value="<%=animal.getAge()%>"></td>
			</tr>
			<tr>

				<td colspan="2" align="right">
					<button type="submit" name="Update">Update</button>
					<button type="reset" name="reset">Reset</button>
				</td>
			</tr>
			</table>
			</form>
</body>
</html>