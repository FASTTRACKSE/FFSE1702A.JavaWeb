<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>

<div class="container">
  <form action="/CRUD-MVC/Insert" method="post">
    <label for="fname">Mã sinh viên</label>
    <input type="text" id="fname" name="masv" placeholder="nhập mã sinh viên">

    <label for="lname">Họ tên</label>
    <input type="text" id="lname" name="name" placeholder="nhập tên">
    
    <label for="lname">Tuổi</label>
    <input type="text" id="lname" name="age" placeholder="nhập tuổi">
    
     <label for="lname">Lớp</label>
    <input type="text" id="lname" name="cls" placeholder="nhập lớp">
   
    <label for="lname">Địa chỉ</label>
    <input type="text" id="lname" name="dress" placeholder="nhập địa chỉ">




    <input type="submit" value="Submit" name="insert">
  </form>
</div>

</body>
</html>
