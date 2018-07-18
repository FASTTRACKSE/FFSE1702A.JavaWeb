<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Employee Page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="<c:url value="/resources/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/assets/flags/flags.css"/>" rel=stylesheet type="text/css">
	<style type="text/css">
.tableUpdated {
	width: 90% !important;
	margin: 17px 58px 0 !important;
}

.btnSpace {
	margin: 17px;
}
	</style>
</head>
<body>

	<c:if test="${empty employee.employeeId}">
	<h1 class="control-label col-sm-4">
	<spring:message code="AddEmployee"/>
	</h1>
	</c:if>


<c:url var="addAction" value="/employee/add" ></c:url>

<form:form action="${addAction}" modelAttribute="employee">
<table class="table table-striped table-hover table-bordered tableUpdated">
	<c:if test="${not empty employee.employeeId}">
	<h1 class="control-label col-sm-4"><spring:message code="EditEmployee"/></h1>
	<tr>
		<td>
			<form:label path="employeeId">
				<spring:message code="EmployeeID"/>
			</form:label>
		</td>
		<td>
			<form:input path="employeeId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="employeeId" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="firstName">
				<spring:message code="FirstName"/>
			</form:label>
		</td>
		<td>
			<form:input path="firstName" class="form-control"/>
		</td> 
	</tr>
		<tr>
		<td>
			<form:label path="lastName">
				<spring:message code="LastName"/>
			</form:label>
		</td>
		<td>
			<form:input path="lastName" class="form-control"/>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="age">
				<spring:message code="Age"/>
			</form:label>
		</td>
		<td>
			<form:input path="age" class="form-control"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="education">
				<spring:message code="Education"/>
			</form:label>
		</td>
		<td>
			<form:input path="education" class="form-control"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="salary">
				<spring:message code="Salary"/>
			</form:label>
		</td>
		<td>
			<form:input path="salary" class="form-control"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
				<input type="submit" value="<spring:message code="Submit"/>" class="btn btn-primary"  style="text-align:center;"/>
		</td>
	</tr>
</table>	
</form:form>
<div style="text-align:center;">
	<a href="<%= request.getContextPath() %>/employees?language=vi"><img src="<c:url value="/assets/flags/blank.gif"/>" class="flag flag-vn" alt="Tiếng Việt"/></a>
	<a href="<%= request.getContextPath() %>/employees?language=en"><img src="<c:url value="/assets/flags/blank.gif"/>" class="flag flag-us" alt="English" /></a>
	</div>
	
<br>

<c:if test="${not empty employeeList}">
<h3 class="control-label col-sm-4"><spring:message code="employeeList"/></h3>
	<table class="table table-striped table-hover table-bordered tableUpdated" style="text-align:center;">
	<tr>
		<th width="80">ID</th>
		<th width="120"><spring:message code="FirstName"/></th>
		<th width="120"><spring:message code="LastName"/></th>
		<th width="120"><spring:message code="Age"/></th>
		<th width="120"><spring:message code="Education"/></th>
		<th width="120"><spring:message code="Salary"/></th>
		<th width="60"><spring:message code="Edit"/></th>
		<th width="60"><spring:message code="Delete"/></th>
	</tr>
	<c:forEach items="${employeeList}" var="employee">
		<tr>
			<td>${employee.employeeId}</td>
			<td>${employee.firstName}</td>
			<td>${employee.lastName}</td>
			<td>${employee.age}</td>
			<td>${employee.education}</td>
			<td>${employee.salary}</td>
			<td><a href="<c:url value='/employee/edit/${employee.employeeId}' />" ><spring:message code="Edit"/></a></td>
			<td><a href="<c:url value='/employee/remove/${employee.employeeId}' />" ><spring:message code="Delete"/></a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>