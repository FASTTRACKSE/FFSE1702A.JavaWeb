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

<fmt:setBundle basename="fasttrackse.bookstore.resources.myLabel" />

<html>
<head>
<title><fmt:message key="label.apptitle" /></title>
<link href="../assets/flags/flags.css" rel=stylesheet type="text/css">
</head>
<body>
	<div align="center">
		<h1><fmt:message key="label.apptitle" /></h1>
		<h2>
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
		<a href="${theCurrentURL}theLocale=ja_JP"><img src="../assets/flags/blank.gif" class="flag flag-jp" alt="日本語" /></a>
		</h2>
		<h2>
			<!-- <a href="list"><fmt:message key="label.list" /></a>  -->
		</h2>
	</div>
	<div align="center">
		<c:if test="${book != null}">
			<form action="update" method="post">
		</c:if>
		<c:if test="${book == null}">
			<form action="insert" method="post">
		</c:if>
		<table border="1" cellpadding="5">
			<caption>
				<h2>
					<c:if test="${book != null}">
            			<fmt:message key="label.update" />
            		</c:if>
					<c:if test="${book == null}">
            			<fmt:message key="label.addnew" />
            		</c:if>
				</h2>
			</caption>
			<c:if test="${book != null}">
				<input type="hidden" name="id" value="${book.id}" />
			</c:if>
			<tr>
				<th><fmt:message key="label.title" />:</th>
				<td><input type="text" name="title" size="45"
					value="${book.title}" /></td>
			</tr>
			<tr>
				<th><fmt:message key="label.author" />:</th>
				<td><input type="text" name="author" size="45"
					value="${book.author}" /></td>
			</tr>
			<tr>
				<th><fmt:message key="label.price" />:</th>
				<td><input type="text" name="price" size="5"
					value="${book.price}" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit"
					value=<fmt:message key="label.save" /> />&nbsp;&nbsp;
					<input type="button" onclick="location.href='list';" value="<fmt:message key="label.cancel" />" />
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>
