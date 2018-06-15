<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.UserBean"%>
<%@ page import="model.dao.UserDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:choose>
    <c:when test="${not empty param.theLocale}">
        <c:set var="theLocale" value="${param.theLocale}" scope="session" /> 
    </c:when>    
    <c:otherwise>
		<c:if test="${empty theLocale}">
		    <c:set var="theLocale" value="${pageContext.request.locale}" scope="session" />
		</c:if>
    </c:otherwise>
</c:choose>

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="myLanguages.myLanguage" />
<!DOCTYPE html>
<html>
<head>
<style>
    input,select{border-radius:8px;padding: 10px;}
    select:required:invalid {
  color: gray;
}
option[value=""][disabled] {
  display: none;
}
option {
  color: black;
}
</style>
 <title>Edit User</title>
 <meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body style="margin-left:50px;">
    <h1 style="border-bottom: 0.5px solid;padding-bottom:30px;border-color:lightgray;">Update User Info</h1>
    <p style=" font-size:20px;">Please edit the input value and submit to update the record</p>
<%
	UserBean user = new UserBean();
%>
<%
	UserDao dao = new UserDao();
%>
  <form method="POST" action='UpdateUser' name="frmEditUser" enctype="multipart/form-data"><input
	type="hidden" name="action" value="edit" /> <%
 	String uid = request.getParameter("userId");
 	if (!((uid) == null)) {
 		int id = Integer.parseInt(uid);
 		user = dao.getUserById(id);
 %>
    <h2><fmt:message key="id"/></h2>
        <input type="text" name="userId" style="width:300px;" placeholder=" Nhập id" value="<%=user.getId()%>" /><br>  
    <h2><fmt:message key="firstname"/></h2>
        <input type="text" name="firstName" style="width:300px;" placeholder=" Nhập tên" value="<%=user.getfName()%>" /><br>  
    <h2><fmt:message key="lastname"/></h2>
        <input type="text" name="lastName" style="width:300px;" placeholder=" Nhập họ" value="<%=user.getlName()%>"/><br>
    <h2><fmt:message key="age"/></h2>
        <input type="number" min="18" max="150" name="age" style="width:300px;" placeholder=" Nhập tuổi" value="<%=user.getage()%>"/><br>
    <h2><fmt:message key="gender"/></h2>
    <!-- <input type="text" name="gender" size="40" placeholder=" Nhập giới tính" value="<%=user.getgender()%>"/><br><br> -->    
    <select required name="gender"  style="width:325px;">
    	 <option value="" disabled selected hidden><%=user.getgender()%></option>
 		 <option value="Male">Male</option>
 		 <option value="Female">Female</option>
	</select><br>
	<h2><fmt:message key="image"/></h2>
        <input type="file" name="uploadFile"><br><br>
        <input style="font-size: 20px ; color: white ;text-align: center;background-color:#5caceb;width:100px;" type = "submit" value="Submit" name="Submit"/>
        <a href="ListUsers?action=listUser"><input style="font-size: 20px ; color: black ;text-align: center;background-color: white;width:100px;border-width:0.5px;border-color:lightgray"  value="Cancel" type = "button" readonly/></a>
    </form>
<%
	} else
		out.println("ID Not Found");
%>
</body>
</html>