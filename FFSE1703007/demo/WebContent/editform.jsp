<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form action="Edituser" method="post">
<input type="hidden" name="id" value="${user.getId() }"/>
<table>
<tr><td>Name:</td><td><input type="text" name="name" value="${user.getName() }"></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" value="${user.getPassword() }"></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" value="${user.getEmail() }"></td></tr>
<tr><td>Sex:</td><td><input type="radio" name="sex" value="male"/>Male <input type="radio" name="sex" value="female"/>Female </td></tr>
<tr><td>Country:</td><td>
<select name="country">
<option>Vietnam</option>
<option>Laos</option>
<option>Cambodia</option>
<option>Thailand</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>
</table>
</form>

</body>
</html>