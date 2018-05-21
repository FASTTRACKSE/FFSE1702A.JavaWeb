<jsp:include page="/templates/header.jsp" /> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="namdv.model.*,namdv.lang.*,java.util.*"%>
<%
ResourceBundle resourcebundle = ResourceBundle.getBundle(request.getAttribute("messages").toString());
%>
<body>
	<div class="container">
		<form action="UserController" method='POST'>
		<% String action = request.getParameter("action"); 
		// User u = (User) request.getAttribute("user");%>
		<% if (action.equalsIgnoreCase("edit")) {%>
		  <div class="form-group">
		    <h5>ID</h5>
		    <%-- <input type="text" class="form-control" name="userid" value="<%=u.getId() %>" readonly="readonly"> --%>
		    <input type="text" class="form-control" name="userid" value="<c:out value="${user.id}" />" readonly="readonly">
		  </div>
		<%}%>
		  <div class="form-group">
		    <h5><%= resourcebundle.getString("username") %></h5>
		    <input type="text" class="form-control" name="username" value="<c:out value="${user.name}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= resourcebundle.getString("password") %></h5>
		    <% if (action.equalsIgnoreCase("edit")) {%>
		    <input type="password" class="form-control" name="password">
		    <%} else {%>
		    <input type="password" class="form-control" name="password" required>
		    <%}%>
		  </div>
		  <div class="form-group">
		    <h5>Email</h5>
		    <input type="email" class="form-control" name="email" value="<c:out value="${user.email}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= resourcebundle.getString("sex") %></h5>
		    <div class="custom-control custom-radio custom-control-inline">
	          <input class="form-check-input" type="radio" name="sex" value="Male" <c:if test="${user.sex == 'Male'}"><c:out value="checked" /></c:if> required>
	          <label class="form-check-label"><%= resourcebundle.getString("male") %></label>
	        </div>
	        <div class="custom-control custom-radio custom-control-inline">
	          <input class="form-check-input" type="radio" name="sex" value="Female" <c:if test="${user.sex == 'Female'}"><c:out value="checked" /></c:if> required>
	          <label class="form-check-label"><%= resourcebundle.getString("female") %></label>
	          <div class="invalid-feedback">Please choose a sex.</div>
	        </div>
		  </div>
		  <div class="form-group">
		    <h5><%= resourcebundle.getString("country") %></h5>
		    <select class="custom-select mr-sm-2" name="country" required>
		       <option value=""><%= resourcebundle.getString("choose") %>...</option>
		       <option value="Vietnam" <c:if test="${user.country == 'Vietnam'}"><c:out value="selected" /></c:if> >Vietnam</option>
		       <option value="USA" <c:if test="${user.country == 'USA'}"><c:out value="selected" /></c:if> >USA</option>
		       <option value="China" <c:if test="${user.country == 'China'}"><c:out value="selected" /></c:if> >China</option>
		    </select>
		  </div>
		  <button type="submit" name="submit" class="btn btn-primary"><%= resourcebundle.getString("submit") %></button>
		  <a href="<%= request.getContextPath() %>?<%= resourcebundle.getString("lang") %>"><button type="button" class="btn btn-outline-secondary"><%= resourcebundle.getString("cancel") %></button></a>
		</form>
	</div>
</body>
</html>