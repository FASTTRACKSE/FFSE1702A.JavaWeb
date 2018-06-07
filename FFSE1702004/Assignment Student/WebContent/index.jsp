<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title" /></title>
<link href="../Assignment_Student/assets/flags/flags.css" rel=stylesheet type="text/css">
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
<a href="${theCurrentURL}theLocale=vi_VN"><img src="../Assignment_Student/assets/flags/blank.gif" class="flag flag-vn" alt="Tiếng Việt" /></a>
<a href="${theCurrentURL}theLocale=en_US"><img src="../Assignment_Student/assets/flags/blank.gif" class="flag flag-us" alt="English" /></a>
</div>

<a href="student/new"><fmt:message key="label.addnew" /> </a><br />
<a href="student/viewsv?pages=2"><fmt:message key="label.view" /></a>
</body>
</html>