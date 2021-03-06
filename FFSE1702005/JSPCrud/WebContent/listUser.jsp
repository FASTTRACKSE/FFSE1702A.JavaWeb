<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="net.roseindia.bean.UserBean"%>
<%@ page import="net.roseindia.dao.UserDao"%>
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
		<fmt:message key="title"/> <a href="UserHandler?action=insert"><input
			style="font-size: 20px; color: white; text-align: center; background-color: limegreen;"
			type="submit" value="<fmt:message key="add"/>" readonly /></a>
	</h1>
	<table>
		<tr>
			<th>ID</th>
			<th><fmt:message key="firstname"/></th>
			<th><fmt:message key="lastname"/></th>
			<th><fmt:message key="age"/></th>
			<th><fmt:message key="gender"/></th>
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
						<td><a
				href="UserHandler?action=editform&userId=${u.getId()}"><img
					src="https://png.icons8.com/windows/1600/0063B1/edit"
					style="width: 30px;"></a> <a
				href="UserHandler?action=delete&userId=${u.getId()}"><img
					src="https://cdn4.iconfinder.com/data/icons/flat-docflow/512/trash-512.png"
					style="width: 30px;"></a></td>
					</tr>
				</c:forEach>
		

		</tr>

	</table>
	<div class="pagination">
					<a class="page" href="<%=request.getContextPath() %>/UserHandler?action=listUser&page=1">Start</a>
					<c:if test="${currentPage != 1}">
					<a class="page" href="<%= request.getContextPath() %>/UserHandler?action=listUser&page=${currentPage-1}">${currentPage-1}</a>
					</c:if>
					<a class="page" href="<%= request.getContextPath() %>/UserHandler?action=listUser&page=${currentPage}">${currentPage}</a>
					<c:if test="${currentPage != lastPage}">
					<a class="page"	href="<%= request.getContextPath() %>/UserHandler?action=listUser&page=${currentPage+1}">${currentPage+1}</a>						
					</c:if>
					<c:if test="${lastPage - currentPage >=2}">				
					<a class="page" href="<%= request.getContextPath() %>/UserHandler?action=listUser&page=${currentPage+2}">${currentPage+2}</a>				
					</c:if>
					<a class="page" href="<%= request.getContextPath() %>/UserHandler?action=listUser&page=${lastPage}">End</a>		
	</div>
	<div style="text-align: left; margin-left:40px;">
	<h1>
		<fmt:message key="select"/> 
		<!-- <a href="#"><input style="font-size: 20px; color: white; text-align: center; background-color: limegreen;width:140px" type="text" value="Language" readonly /></a> -->
	 <select onchange="location = this.value;">
		 <option value="" disabled selected hidden><fmt:message key="language"/></option>
	 	<option value="<%= request.getContextPath() %>/UserHandler?action=listUser&page=${currentPage}&theLocale=vi_VN"><fmt:message key="vi_VN"/></option>
 		<option value="<%= request.getContextPath() %>/UserHandler?action=listUser&page=${currentPage}&theLocale=en_US"><fmt:message key="en_US"/></option>
	</select><br><br>
	</h1>
	</div>

</body>
</html>