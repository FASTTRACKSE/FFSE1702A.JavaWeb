<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title><spring:message code="title" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/bootstrap.min.css" />"
	rel="stylesheet">
<style type="text/css">
.tableUpdated {
	width: 90% !important;
	margin: 17px 58px 0 !important;
}

.btnSpace {
	margin: 17px;
}

.error {
	color: red;
}
</style>
</head>
<body>

	<c:if test="${empty sinhvien.id}">
		<h1 class="control-label col-sm-4">
			<spring:message code="them" />
		</h1>
	</c:if>


	<c:url var="addAction" value="/danhsach/themsv"></c:url>

	<form:form action="${addAction}" modelAttribute="sinhvien">
		<table
			class="table table-striped table-hover table-bordered tableUpdated"
			style="width: 50%;">
			<c:if test="${not empty sinhvien.id}">
				<h1 class="control-label">
					<spring:message code="EditEmployee" />
				</h1>
				<tr>
					<td style="width: 150px;"><form:label path="id">
							<spring:message code="id" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td style="width: 250px;"><form:label path="ho">
						<spring:message code="ho" />
					</form:label></td>
				<td><form:input path="ho" class="form-control" />
					<form:errors path="ho" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="ten">
						<spring:message code="ten" />
					</form:label></td>
				<td><form:input path="ten" class="form-control" />
					<form:errors path="ten" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="namSinh">
						<spring:message code="namsinh" />
					</form:label></td>
				<td><form:input type="number" path="namSinh"
						class="form-control" />
					<form:errors path="namSinh" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="gioiTinh">
						<spring:message code="gioitinh" />
					</form:label></td>
				<td><form:radiobutton path="gioiTinh" value="Nam"
						checked="checked" /> <spring:message code="nam" /> <form:radiobutton
						path="gioiTinh" value="Nữ" /> <spring:message code="nu" /> <form:radiobutton
						path="gioiTinh" value="Khác" /> <spring:message code="khac" /></td>
			</tr>
			<tr>
				<td><form:label path="email">
						<spring:message code="email" />
					</form:label></td>
				<td><form:input path="email" class="form-control" />
					<form:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="sdt">
						<spring:message code="sdt" />
					</form:label></td>
				<td><form:input type="number" path="sdt" class="form-control" />
					<form:errors path="sdt" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="diaChi">
						<spring:message code="diachi" />
					</form:label></td>
				<td><form:input path="diaChi" class="form-control" />
					<form:errors path="diaChi" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="lophoc.maLop">
						<spring:message code="malop" />
					</form:label></td>
				<td>
					<div class="form-group">
						<form:select path="lophoc.maLop" class="form-control" id="sel1">
							<c:forEach items="${danhSachLop}" var="lop">
								<form:option value="${lop.maLop}" label="${lop.tenLop}" />
							</c:forEach>
						</form:select>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit"
					style="background-color: limegreen;"
					value="<spring:message code="Submit"/>" class="btn btn-primary"
					style="text-align: center;" /> <c:if
						test="${not empty sinhvien.id}">
						<input type="reset" value="<spring:message code="reset"/>"
							class="btn btn-primary" style="text-align: center;" />

						<a href="<%=request.getContextPath()%>/danhsach"> <input
							type="button" value="<spring:message code="back"/>"
							class="btn btn-primary" style="text-align: center;" />
						</a>
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<div style="text-align: center;">
		<a href="<%=request.getContextPath()%>/danhsach"><input
			class="btn btn-primary"
			style="font-size: 20px; background-color: limegreen;" type="button"
			value="<spring:message code="danhsach" />" readonly /></a>
	</div>

</body>
</html>