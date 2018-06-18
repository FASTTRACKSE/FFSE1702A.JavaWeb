<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.Locale"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CRUD</title>
</head>
<body>
<c:choose>
	<c:when test="${not empty param.theLocale}">
		<c:set var="theLocale" value="${param.theLocale}" scope="session" />
	</c:when>
	<c:otherwise>
		<c:set var="theLocale" value="${pageContext.request.locale}"
			scope="session" />
	</c:otherwise>
</c:choose>
<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="resources.myLabel" />
<select name="locale" onchange="location = this.value;">
<option value="?theLocale=en_US" <c:if test="${theLocale == 'en_US' }">selected</c:if>>en_US</option>
<option value="?theLocale=vi_VN" <c:if test="${theLocale == 'vi_VN' }">selected</c:if>>vi_VN</option>
</select>

	<h1>JSP CRUD</h1>
	<a href="Adduserform"><fmt:message key="label.add" /></a>
	<a href="Viewusers?page=1"><fmt:message key="label.view" /></a>
</body>
</html>