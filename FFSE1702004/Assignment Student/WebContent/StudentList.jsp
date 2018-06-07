<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<body><div style="text-align: center;">
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
		<h1><fmt:message key="label.title" /></h1>
        <h2>
        	<a href="new"><fmt:message key="label.addnew" /></a>       	
        </h2>
	</div>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2><fmt:message key="label.list" /></h2></caption>
            <tr>
                <th><fmt:message key="label.id" /></th>
                <th><fmt:message key="label.name" /></th>
                <th><fmt:message key="label.old" /></th>
                <th>email</th>
                 <th><fmt:message key="label.clas" /></th>
                <th><fmt:message key="label.action" /></th>
            </tr>
                       <c:forEach var="student" items="${listStudent}">

                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.old}</td>
                    <td>${student.email}</td>
                    <td>${student.clas}</td>
                    <td>
                    	<a href="edit?id=${student.id}"><fmt:message key="label.edit" /></a>
                    	&nbsp;&nbsp;
                    	<a href="delete?id=${student.id}"><fmt:message key="label.delete" /></a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
        <ul>
        <li>
         <%  
         int total = (Integer) request.getAttribute("total");
         for(int i = 0 ;i <= total/5 ;i++) { %>
        <a href="viewsv?pages=<%=i+1%>" ><%=i+1%></a>
        <% } %>
        </li>
        </ul>
    </div>	
</body>
</html>
