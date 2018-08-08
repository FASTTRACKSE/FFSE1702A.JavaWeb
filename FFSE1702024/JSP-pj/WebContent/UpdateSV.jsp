<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="model.*,java.util.*"%>
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
  <form action="UpdateController" method="post">
  <% String maedit = request.getParameter("ma");
     String edit = maedit;
  ArrayList<SinhVien> SV= (ArrayList<SinhVien>) request.getAttribute("update");
	%>
   <input type="hidden" id="lname" name="edit" value="<%=edit%>" >
    <label for="lname">Họ tên</label>
    
    <input type="text" id="lname" name="name" value="<%=SV.get(0).getName()  %>" >
    
    <label for="lname">Tuổi</label>
    <input type="text" id="lname" name="age" value="<%=SV.get(0).getAge()  %>">
    
     <label for="lname">Lớp</label>
    <input type="text" id="lname" name="cls" value="<%=SV.get(0).getCls()  %>">
   
    <label for="lname">Địa chỉ</label>
    <input type="text" id="lname" name="dress" value="<%=SV.get(0).getDress()  %>">




    <input type="submit" value="Submit" name="update">
  </form>
</div>

</body>
</html>
