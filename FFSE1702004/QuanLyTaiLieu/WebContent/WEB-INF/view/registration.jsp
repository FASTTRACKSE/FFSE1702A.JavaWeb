<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Registration Form</title>
	 <!-- BEGIN VENDOR CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/feather/style.min.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome/css/font-awesome.min.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/flag-icon-css/css/flag-icon.min.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/extensions/pace.css "/>">
   <!-- END VENDOR CSS-->
   <!-- BEGIN STACK CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-extended.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/app.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/colors.css "/>">
   <!-- END STACK CSS-->
   <!-- BEGIN Page Level CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/menu/menu-types/vertical-menu.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/menu/menu-types/vertical-overlay-menu.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/colors/palette-gradient.css "/>">
   <!-- END Page Level CSS-->
</head>

<body>

 	<div class="generic-container">
	<div class="well lead">User Registration Form</div>
 	<form:form method="POST" modelAttribute="user" class="form-horizontal">
		
		
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="ssoId">SSO ID</label>
				<div class="col-md-7">
					<c:choose>
						<c:when test="${edit}">
							<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/>
						</c:when>
						<c:otherwise>
							<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="ssoId" class="help-inline"/>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="userProfiles">Roles</label>
				<div class="col-md-7">
					<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="userProfiles" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="form-actions floatRight">
				<c:choose>
					<c:when test="${edit}">
						<input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
					</c:when>
					<c:otherwise>
						<input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</form:form>
	</div>
</body>
</html>