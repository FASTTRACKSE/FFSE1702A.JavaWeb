<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.UserBean"%>
<%@ page import="model.dao.UserDao"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
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
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link href="assets/flags/flags.css" rel=stylesheet type="text/css">
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
	font-size: 25px;
}

th {
	background-color: #5caceb
}

table {
	margin: auto;
}

a {
	text-decoration: none;
	font-size: 25px;
}

li {
	overflow: hidden;
}

select,option{border-radius:8px;padding: 10px;
	font-size: 20px; 
	color: white; 
	text-align: center; 
	background-color: limegreen;}

.pagination {
padding: 20px;
margin-bottom: 20px;
}
 
.page {
    display: inline-block;
    color: #717171;
    padding: 0px 9px;
    margin-right: 1px;
    border-radius: 3px;
    border: solid 1px #c0c0c0;
    background: #e9e9e9;
    text-decoration: none;
}
 
.page:hover, .page.gradient:hover {
    background: #595959;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
    text-shadow: 0px 0px 3px rgba(0,0,0, .5);
    color: #f0f0f0;
}
 
.page.active {
    border: none;
    background: #616161;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
    color: #f0f0f0;
    text-shadow: 0px 0px 3px rgba(0,0,0, .5);
}
	select.icon-menu option {
	background-repeat:no-repeat;
	background-position:bottom left;
	padding-left:30px;
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
		<fmt:message key="title"/> <a href="AddUser?action=insert"><input
			style="font-size: 20px; color: white; text-align: center; background-color: limegreen;"
			type="submit" value="<fmt:message key="add"/>" readonly /></a>
	</h1>
	<table>
		<tr>
			<th><fmt:message key="id"/></th>
			<th><fmt:message key="firstname"/></th>
			<th><fmt:message key="lastname"/></th>
			<th><fmt:message key="age"/></th>
			<th><fmt:message key="gender"/></th>
			<th><fmt:message key="image"/></th>
			<th><fmt:message key="action"/></th>
		</tr>
		<tr>
		<c:forEach items="${users}" var="u">
					<tr>
						<td>${u.getId()}</td>
						<td>${u.getfName()}</td>
						<td>${u.getlName()}</td>
						<td>${u.getage()}</td>
						<td>${u.getgender()}</td>
						<td><img src="<c:out value="${pageContext.request.contextPath}" />/upload/UsersPCPicturesRyan.png" height="100" width="150"></td>
						<td><a
				href="UpdateUser?action=editform&userId=${u.getId()}"><img
					src="https://png.icons8.com/windows/1600/0063B1/edit"
					style="width: 30px;"></a> <a
				href="DeleteUser?action=delete&userId=${u.getId()}"><img
					src="https://cdn4.iconfinder.com/data/icons/flat-docflow/512/trash-512.png"
					style="width: 30px;"></a></td>
					</tr>
				</c:forEach>
		

		</tr>

	</table>
	<div class="pagination">
					<a class="page" href="<%=request.getContextPath() %>/ListUsers?action=listUser&page=1"><fmt:message key="start"/></a>
					<c:if test="${currentPage != 1}">
					<a class="page" href="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage-1}">${currentPage-1}</a>
					</c:if>
					<a class="page" href="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage}">${currentPage}</a>
					<c:if test="${currentPage != lastPage}">
					<a class="page"	href="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage+1}">${currentPage+1}</a>						
					</c:if>
					<c:if test="${lastPage - currentPage >=2}">				
					<a class="page" href="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage+2}">${currentPage+2}</a>				
					</c:if>
					<a class="page" href="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${lastPage}"><fmt:message key="end"/></a>		
	</div>
	<a href="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage}&theLocale=vi_VN"><img src="assets/flags/blank.gif" class="flag flag-vn" alt="Tiếng Việt" /></a>
	<a href="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage}&theLocale=en_US"><img src="assets/flags/blank.gif" class="flag flag-us" alt="English" /></a>
	<div style="text-align: left; margin-left:40px;">
	<h1>
		<fmt:message key="select"/> 
	 <select onchange="location = this.value;">
		<option value="" disabled selected hidden><fmt:message key="language"/></option>
	 	<option style="img:url(https://static.appvn.com/a/uploads/thumbnails/092017/oreo-8-icon-pack_icon.png);width: 30px;" value="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage}&theLocale=vi_VN"><fmt:message key="vi_VN"/></option>
 		<option value="<%= request.getContextPath() %>/ListUsers?action=listUser&page=${currentPage}&theLocale=en_US"><fmt:message key="en_US"/></option>
	</select><br><br>
	</h1>
	</div>

</body>
</html>