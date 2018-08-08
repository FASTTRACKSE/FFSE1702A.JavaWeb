<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add sinhvien</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body>


	<c:url var="addAction" value="/save"></c:url>

	<form:form action="${addAction}" commandName="person">
		<table>
			<c:if test="${!empty person.maSV}">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="maSV">
						<spring:message code="IdSV" text="default text" />
					</form:label></td>
				<td><form:input path="maSV" /></td>
			</tr>
			<tr>
				<td><form:label path="hoDem">
						<spring:message code="FirstName" text="default text" />
					</form:label></td>
				<td><form:input path="hoDem" /></td>
			</tr>
			<tr>
				<td><form:label path="ten">
						<spring:message code="LastName" text="default text" />
					</form:label></td>
				<td><form:input path="ten" /></td>
			</tr>
			<tr>
				<td><form:label path="lop">
						<spring:message code="Class" text="default text" />

					</form:label></td>
				<td>
				 <form:select path="lop.id" items="${listLop}" multiple="true" itemValue="id" itemLabel="tenLop" class="form-control" />
				</td>
			</tr>
			<tr>
				<td><form:label path="namSinh">
						<spring:message code="Year" text="default text" />
					</form:label></td>
				<td><form:input path="namSinh" /></td>
			</tr>
			<tr>
				<td><form:label path="gioiTinh">
						<spring:message code="Sex" text="default text" />
					</form:label></td>
				<td><form:radiobutton path="gioiTinh" value="Nam" />
					<spring:message code="Male" text="default text" /> <form:radiobutton
						path="gioiTinh" value="Nu" />
					<spring:message code="Female" text="default text" /></td>
			</tr>
			<tr>
				<td><form:label path="diaChi">
						<spring:message code="Address" text="default text" />
					</form:label></td>
				<td><form:input path="diaChi" /></td>
			</tr>

			<tr>
				<td><form:label path="email">
						<spring:message code="Email" text="default text" />
					</form:label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="dienThoai">
						<spring:message code="Phone" text="default text" />
					</form:label></td>
				<td><form:input path="dienThoai" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty person.ten}">
						<input type="submit"
							value="<spring:message code="Submit" text="default text" />" />
					</c:if> <c:if test="${empty person.ten}">
						<input type="submit"
							value="<spring:message code="Submit" text="default text" />" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
</body>
</html>