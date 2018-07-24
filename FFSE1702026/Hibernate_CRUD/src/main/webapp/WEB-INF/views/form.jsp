<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title><spring:message code="list.add" /></title>
</head>
<body>
	<div class="container">
		Language : <a href="?language=en">English</a>| <a
			href="?language=vi_VN">Viet Nam</a>| <a href="?language=ja_JP">Japanese</a>|
		<a href="?language=fr_FR">France</a>
		<h2>
			<c:if test="${action=='add' }">
				<spring:message code="list.add" />
			</c:if>
			<c:if test="${action=='/Hibernate_CRUD/student/update' }">
				<spring:message code="update.name" />
			</c:if>
		</h2>

		<form:form action="${action }" acceptCharset="UTF-8"
			modelAttribute="student" method="post">
			<c:if test="${action=='/Hibernate_CRUD/student/update' }">
				<form:hidden path="id" cssClass="form-control" />
			</c:if>
			<div class="form-group">
				<form:label path="code">
					<spring:message code="list.code" arguments="en"></spring:message>
				</form:label>
				<form:input path="code" cssClass="form-control" />
				<form:errors path="code" cssStyle="color: red"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="lastname">
					<spring:message code="list.lastname"></spring:message>
				</form:label>
				<form:input path="lastname" cssClass="form-control" />
				<form:errors path="lastname" cssStyle="color: red"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="firstname">
					<spring:message code="list.firstname" text="default text" />
				</form:label>
				<form:input path="firstname" cssClass="form-control" />
				<form:errors path="firstname" cssStyle="color: red"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="birthday">
					<spring:message code="list.year" />
				</form:label>
				<form:input path="birthday" cssClass="form-control" />
				<form:errors path="birthday" cssStyle="color: red"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="phone">
					<spring:message code="list.phone" />
				</form:label>
				<form:input path="phone" title="phone" cssClass="form-control" />
				<form:errors path="phone" cssStyle="color: red"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="email">
					<spring:message code="list.email" />
				</form:label>
				<form:input path="email" cssClass="form-control" />
				<form:errors path="email" cssStyle="color: red"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="address">
					<spring:message code="list.address" />
				</form:label>
				<form:input path="address" cssClass="form-control" />
				<form:errors path="address" cssStyle="color: red"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="gender">
					<spring:message code="list.gender" />
				</form:label>

				<form:radiobutton path="gender" value="0" />
				<spring:message code="gender.female" />
				<form:radiobutton path="gender" value="1" />
				<spring:message code="gender.male" />



			</div>
			<div class="form-group">
				<form:label path="id_class">
					<spring:message code="list.class" />
				</form:label>
				<form:select path="id_class" cssClass="form-control">
					<%-- <form:options items="${list }" itemLabel="${list.name }" itemValue="${list.id }"
					 /> --%>
					<c:forEach var="item" items="${list }">
						<form:option value="${item.id }">${item.name }</form:option>
					</c:forEach>
				</form:select>


			</div>
			<button type="submit">
				<c:if test="${action=='add' }">
					<spring:message code="add.btn" />
				</c:if>
				<c:if test="${action=='/Hibernate_CRUD/student/update' }">
					<spring:message code="update.btn" />
				</c:if>
			</button>
		</form:form>

	</div>
</body>
</html>
