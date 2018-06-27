<jsp:include page="/templates/Header.jsp" /> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.*,java.util.*"%>
<%@ page import="model.dao.UserDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="resources.messages" />
<body>
	<div class="container">
		<form method='POST'  enctype="multipart/form-data">
	
		
		  <div class="form-group">
		    <h5>ID</h5>
		    <%-- <input type="text" class="form-control" name="userid" value="<%=u.getId() %>" readonly="readonly"> --%>
		    <input type="text" class="form-control" name="userid" value="<c:out value="${user.id}" />" readonly="readonly">
		  </div>
		
		  <div class="form-group">
		    <h5><fmt:message key="username"/></h5>
		    <input type="text" class="form-control" name="username" value="<c:out value="${user.name}" />" required>
		  </div>
		  
		  <div class="form-group">
		    <h5><fmt:message key="year"/></h5>
		    <input type="text" class="form-control" name="year" value="<c:out value="${user.year}" />" required>
		  </div >
		    <div class="form-group">
		  	
			  <input type="file" name="file" value="<c:out value="${user.file}" />" required/>
			</div>
		  <div class="form-group">
		    <h5><fmt:message key="class"/></h5>
		    <select class="custom-select mr-sm-2" name="classroom" required>
		       <option value="">Choose...</option>
		       <option value="FFSE1702" <c:if test="${user.classroom == 'FFSE1702'}"><c:out value="selected" /></c:if> >FFSE1702</option>
		       <option value="FFSE1703" <c:if test="${user.classroom == 'FFSE1703'}"><c:out value="selected" /></c:if> >FFSE1703</option>
		       <option value="FFSE1704" <c:if test="${user.classroom == 'FFSE1704'}"><c:out value="selected" /></c:if> >FFSE1704</option>
		       <option value="FFSE1705" <c:if test="${user.classroom == 'FFSE1705'}"><c:out value="selected" /></c:if> >FFSE1705</option>
		    </select>
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
		  <div class="form-group">
		    <h5><fmt:message key="country"/></h5>
		    <select class="custom-select mr-sm-2" name="country" required>
		       <option value="">Choose...</option>
		       <option value="Vietnam" <c:if test="${user.country == 'Vietnam'}"><c:out value="selected" /></c:if> >Vietnam</option>
		       <option value="USA" <c:if test="${user.country == 'USA'}"><c:out value="selected" /></c:if> >USA</option>
		       <option value="China" <c:if test="${user.country == 'China'}"><c:out value="selected" /></c:if> >China</option>
		    </select>
		  </div>
		  <button type="submit" name="submit" class="btn btn-primary"><fmt:message key="submit"/></button>
		  <a href="index.jsp"><button type="button" class="btn btn-outline-secondary"><fmt:message key="cancel"/></button></a>
		</form>
	</div>
	
</body>
