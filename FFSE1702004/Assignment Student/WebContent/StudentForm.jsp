<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
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

<fmt:setBundle basename="resources.myLabel" />

<html>
<head>
<title><fmt:message key="label.title" /></title>
<link href="../assets/flags/flags.css" rel=stylesheet type="text/css">
</head>
<body>
	<h1  style ="text-align: center ;color:red ;" ><fmt:message key="label.title" /></h1>
<div style="text-align: center;">
		<c:choose>
		    <c:when test="${not empty param.id}">
		    	<c:set var="theCurrentURL" value="${baseURL}?id=${param.id}&" scope="page" />
		    </c:when>    
		    <c:otherwise>
		    	<c:set var="theCurrentURL" value="${baseURL}?" scope="page" />
		    </c:otherwise>
		</c:choose>
<a href="${theCurrentURL}theLocale=vi_VN"><img src="../assets/flags/blank.gif" class="flag flag-vn" alt="Tiếng Việt" /></a>
<a href="${theCurrentURL}theLocale=en_US"><img src="../assets/flags/blank.gif" class="flag flag-us" alt="English" /></a>
</div>
	<div align="center">
		<c:if test="${student != null}">
			<form action="update" method="post">
			
		</c:if>
		<c:if test="${student == null}">
			<form action="insert" method="post">
		</c:if>
		<table border="1" cellpadding="5">
			<caption>
				<h2>
					<c:if test="${student != null}">
            			<fmt:message key="label.update" />
            		</c:if>
					<c:if test="${student == null}">
            			<fmt:message key="label.addnew" />
            		</c:if>
				</h2>
			</caption>
			<c:if test="${student != null}">
				<input type="hidden" name="id" value="${student.id}" />
			</c:if>
			<tr>
				<th><fmt:message key="label.name" />:</th>
				<td><input type="text" name="name" size="45"
					value="${student.name}" /></td>
			</tr>

			<tr>
				<th><fmt:message key="label.old" />:</th>
				<td><input type="text" name="old" size="45"
					value="${student.old}" /></td>
			</tr>

			<tr>
				<th><fmt:message key="label.email" />:</th>
				<td><input type="text" name="email" size="45"
					value="${student.email}" /></td>
			</tr>

			<tr>
				<th><fmt:message key="label.clas" />:</th>
				<td><input type="text" name="clas" size="45"
					value="${student.clas}" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="submit"
					value=<fmt:message key="label.save" /> />
					<input type="button" onclick="location.href='list';" value="<fmt:message key="label.cancel" />" />
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>
