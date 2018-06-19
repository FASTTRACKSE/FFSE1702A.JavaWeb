<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Books Store Application</title>
</head>
<body>
	<div align="center">
		<h1>Books Management</h1>
        <h2>
        	<a href="new">Add New Book</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="../">Back to Home</a>        	
        </h2>
	</div>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Books</h2></caption>
            <tr>
                <th>No.</th>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <c:set var="count" value="0" scope="page" />
            <c:forEach var="book" items="${listBook}">
            	<c:set var="count" value="${count + 1}" scope="page"/>
                <tr>
                	<td>${count}</td>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td>${book.price}</td>
                    <td>
                    	<a href="edit?id=${book.id}">Edit</a>
                    	&nbsp;&nbsp;
                    	<a href="delete?id=${book.id}">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
