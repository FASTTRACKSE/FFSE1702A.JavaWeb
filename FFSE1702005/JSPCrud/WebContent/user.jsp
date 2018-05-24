<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
  <style>
    input,select,option{border-radius:8px;padding: 10px;}
</style>
<title>Add New User</title>
</head>
<body style="margin-left:50px;">
    <h1 style="border-bottom: 0.5px solid;padding-bottom:30px;border-color:lightgray;">Create New User</h1>
    <p style=" font-size:20px;">Please fill this form and submit to add new user record to the database</p>
<form method="POST" action='UserHandler' name="frmAddUser"><input
	type="hidden" name="action" value="insert" />
    <h2>ID</h2>
        <input type="text" name="userid" style="width:300px;" placeholder=" Nhập ID" required/><br>  
    <h2>Fist Name</h2>
        <input type="text" name="firstName" style="width:300px;" placeholder=" Nhập tên" required/><br>
    <h2>Last Name</h2>
        <input type="text" name="lastName" style="width:300px;" placeholder=" Nhập họ" required/><br>
    <h2>Age</h2>
        <input type="number" min="18" max="150" name="age" style="width:300px;" placeholder=" Nhập tuổi" required/><br>
    <h2>Gender</h2>
     <!-- <input type="text" name="gender" size="40" placeholder=" Nhập giới tính" required/><br><br> -->   
    <select name="gender"  style="width:325px;">
 		 <option value="Male">Male</option>
 		 <option value="Female">Female</option>
	</select><br><br>
        <input style="font-size: 20px ; color: white ;text-align: center;background-color: #5caceb;" type = "submit" name="Submit" value="Submit"/> 
        <a href="UserHandler?action=listUser"><input style="font-size: 20px ; color: black ;text-align: center;background-color: white;width:100px;border-width:0.5px;border-color:lightgray"  value="Cancel" type = "button" readonly/></a>
    </form>
<!--<p><a href="UserHandler?action=listUser">View-All-Records</a></p>-->
</body>
</html>