<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Animal</title>
</head>
<body>
	<form action="InsertAnimal" method="POST">
		<h1>Insert Animal</h1>
		<table>

			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Sex</td>
				<td><input type="text" name="sex"></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>

				<td colspan="2" align="right">
					<button type="submit" name="insert">Insert</button>
					<button type="reset" name="reset">Reset</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>