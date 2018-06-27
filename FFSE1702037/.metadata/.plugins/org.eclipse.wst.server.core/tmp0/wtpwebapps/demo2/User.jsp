<jsp:include page="/templates/Header.jsp" /> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.*,java.util.*"%>
<%@ page import="dao.UserDao"%>
<% Map<String,String> showLangguage = new UserDao().vietnameseLanguage();
	String lang =(String) request.getAttribute("lang");
if(lang!=null){
	if(lang.equals("Vietnamese")){
		showLangguage = new UserDao().vietnameseLanguage();
	}else if(lang.equals("English")){
		showLangguage = new UserDao().englishLanguage();
	}
}
%>
<body>
	<div class="container">
		<form action="UserController" method='POST'  enctype="multipart/form-data">
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
		    <h5><%= showLangguage.get("ListUser.Name") %></h5>
		    <input type="text" class="form-control" name="username" value="<c:out value="${user.name}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListUser.Image") %></h5>
		    <input type="file" class="form-control" name="userimage" value="<c:out value="${user.image}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListUser.Year") %></h5>
		    <input type="text" class="form-control" name="year" value="<c:out value="${user.year}" />" required>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListUser.Class") %></h5>
		    <select class="custom-select mr-sm-2" name="classroom" required>
		       <option value="">Choose...</option>
		       <option value="FFSE1702" <c:if test="${user.classroom == 'FFSE1702'}"><c:out value="selected" /></c:if> >FFSE1702</option>
		       <option value="FFSE1703" <c:if test="${user.classroom == 'FFSE1703'}"><c:out value="selected" /></c:if> >FFSE1703</option>
		       <option value="FFSE1704" <c:if test="${user.classroom == 'FFSE1704'}"><c:out value="selected" /></c:if> >FFSE1704</option>
		       <option value="FFSE1705" <c:if test="${user.classroom == 'FFSE1705'}"><c:out value="selected" /></c:if> >FFSE1705</option>
		    </select>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListUser.Sex") %></h5>
		    <div class="custom-control custom-radio custom-control-inline">
	          <input class="form-check-input" type="radio" name="sex" value="Male" <c:if test="${user.sex == 'Male'}"><c:out value="checked" /></c:if> required>
	          <label class="form-check-label"><%= showLangguage.get("ListUser.Boy") %></label>
	        </div>
	        <div class="custom-control custom-radio custom-control-inline">
	          <input class="form-check-input" type="radio" name="sex" value="Female" <c:if test="${user.sex == 'Female'}"><c:out value="checked" /></c:if> required>
	          <label class="form-check-label"><%= showLangguage.get("ListUser.Girl") %></label>
	          <div class="invalid-feedback">Please choose a sex.</div>
	        </div>
		  </div>
		  <div class="form-group">
		    <h5><%= showLangguage.get("ListUser.Country") %></h5>
		    <select class="custom-select mr-sm-2" name="country" required>
		       <option value="">Choose...</option>
		       <option value="Vietnam" <c:if test="${user.country == 'Vietnam'}"><c:out value="selected" /></c:if> >Vietnam</option>
		       <option value="USA" <c:if test="${user.country == 'USA'}"><c:out value="selected" /></c:if> >USA</option>
		       <option value="China" <c:if test="${user.country == 'China'}"><c:out value="selected" /></c:if> >China</option>
		    </select>
		  </div>
		  <button type="submit" name="submit" class="btn btn-primary"><%= showLangguage.get("ListUser.Submit") %></button>
		  <a href="index.jsp"><button type="button" class="btn btn-outline-secondary"><%= showLangguage.get("ListUser.Cancel") %></button></a>
		</form>
	</div>
	
</body>
