<jsp:include page="/templates/header.jsp" /> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale}" scope="session" />

<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="namdv.resources.messages" />

<body>
	<div class="container">
		<c:if test="${user != null}">
			<c:set var="action" value="do_update?id=${user.id}" />
		</c:if>
		<c:if test="${user == null}">
			<c:set var="action" value="do_add" />
		</c:if>
		<form action="<c:out value="${action}" />" method='POST' enctype="multipart/form-data">
		  <div class="form-group">
		    <h5><fmt:message key="username"/></h5>
		    <input type="text" class="form-control" name="username" value="<c:out value="${user.name}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><fmt:message key="password"/></h5>
		    <input type="password" class="form-control" name="password" <c:if test="${user == null}"><c:out value= "required" /></c:if>>
		  </div>
		  <div class="form-group">
		    <h5>Email</h5>
		    <input type="email" class="form-control" name="email" value="<c:out value="${user.email}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><fmt:message key="sex"/></h5>
		    <div class="custom-control custom-radio custom-control-inline">
	          <input class="form-check-input" type="radio" name="sex" value="Male" <c:if test="${user.sex == 'Male'}"><c:out value="checked" /></c:if> required>
	          <label class="form-check-label"><fmt:message key="male"/></label>
	        </div>
	        <div class="custom-control custom-radio custom-control-inline">
	          <input class="form-check-input" type="radio" name="sex" value="Female" <c:if test="${user.sex == 'Female'}"><c:out value="checked" /></c:if> required>
	          <label class="form-check-label"><fmt:message key="female"/></label>
	          <div class="invalid-feedback">Please choose a sex.</div>
	        </div>
		  </div>
		  	<div class="input-group mb-3">
			  <input type="file" name="file" />
			</div>
		  <div class="form-group">
		    <h5><fmt:message key="country"/></h5>
		    <select class="custom-select mr-sm-2" name="country" required>
		       <option value=""><fmt:message key="choose"/>...</option>
		       <option value="Vietnam" <c:if test="${user.country == 'Vietnam'}"><c:out value="selected" /></c:if> >Vietnam</option>
		       <option value="USA" <c:if test="${user.country == 'USA'}"><c:out value="selected" /></c:if> >USA</option>
		       <option value="China" <c:if test="${user.country == 'China'}"><c:out value="selected" /></c:if> >China</option>
		    </select>
		  </div>
		  <button type="submit" name="submit" class="btn btn-primary"><fmt:message key="submit"/></button>
		  <a href="<%= request.getContextPath() %>/user"><button type="button" class="btn btn-outline-secondary"><fmt:message key="cancel"/></button></a>
		</form>
	</div>
</body>
</html>