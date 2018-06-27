
<%@ page import="java.io.*,java.util.*,dao.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:choose>
<c:when test="${param.language!=null }">
	<c:set var="language" value="${param.language }" scope="session"/>
</c:when>
<c:otherwise>
	<c:set var="language" value="${pageContext.request.locale}" scope="session"/>
</c:otherwise>
</c:choose>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="resources.myLabel" />


<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2><c:if test="${kh==null }"><fmt:message key="form.add" /></c:if><c:if test="${kh!=null }"><fmt:message key="form.edit"/></c:if></h2>
  <form class="form-horizontal" action="<c:if test="${kh==null }">insert</c:if><c:if test="${kh!=null }">update</c:if>" method="post">
  	<input type="hidden" value="${param.language }" name="language"/>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"><fmt:message key="main.id"/></label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  placeholder="<fmt:message key="main.id"/>" name="idKH" value="${kh.maKH }">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="name"><fmt:message key="main.name"/></label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="<fmt:message key="main.name"/>" name="name" value="${kh.name }">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="sdt"><fmt:message key="main.phone"/></label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="<fmt:message key="main.phone"/>" name="phone" value="${kh.phone }">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Email" name="email" value="${kh.email }">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"><fmt:message key="main.township"/></label>
      <div class="col-sm-10">          
        	<select class="form-control" name="quan">
        		<option value="Hải Châu" <c:if test="${kh.quan.equals('Hải Châu') }">selected</c:if> >Hải Châu</option>
        		<option value="Thanh Khê" <c:if test="${kh.quan.equals('Thanh Khê') }">selected</c:if> >Thanh Khê</option>
        		<option value="Sơn Trà"  <c:if test="${kh.quan.equals('Sơn Trà') }">selected</c:if>>Sơn Trà</option>
        		<option value="Ngũ Hành Sơn" <c:if test="${kh.quan.equals('Ngũ Hành Sơn') }">selected</c:if>>Ngũ Hành Sơn</option>
        	</select>
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" value="Add" name="Add"><c:if test="${kh==null }"><fmt:message key="form.addbtn" /></c:if><c:if test="${kh!=null }"><fmt:message key="form.editbtn"/></c:if></button>
      </div>
    </div>
  </form>
</div>


</body>