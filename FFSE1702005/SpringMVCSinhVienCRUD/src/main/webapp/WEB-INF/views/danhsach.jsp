<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="title" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/assets/flags/flags.css"/>" rel=stylesheet
	type="text/css">
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
<body style="font-size: 18px;">
	<div style="text-align: center; margin-top: 40px;">
		<a href="<%=request.getContextPath()%>/themsv"><input
			class="btn btn-primary"
			style="font-size: 20px; background-color: limegreen;" type="submit"
			value="<spring:message code="them" />" readonly /></a>
	</div> <br>
	<div style="text-align: center;">
		<a href="<%=request.getContextPath()%>/danhsach?language=vi"><img
			src="<c:url value="/assets/flags/blank.gif"/>" class="flag flag-vn"
			alt="Tiếng Việt" /></a> <a
			href="<%=request.getContextPath()%>/danhsach?language=en"><img
			src="<c:url value="/assets/flags/blank.gif"/>" class="flag flag-us"
			alt="English" /></a>
	</div>
	<c:if test="${not empty danhSachSinhVien}">
		<h1 class="control-label col-sm-4">
			<spring:message code="danhsach" />
		</h1>
		<table
			class="table table-striped table-hover table-bordered tableUpdated"
			style="text-align: center;">
			<tr>
				<th width="80">STT</th>
				<th width="80">ID</th>
				<th width="120"><spring:message code="ho" /></th>
				<th width="120"><spring:message code="ten" /></th>
				<th width="120"><spring:message code="namsinh" /></th>
				<th width="120"><spring:message code="gioitinh" /></th>
				<th width="120"><spring:message code="email" /></th>
				<th width="120"><spring:message code="sdt" /></th>
				<th width="120"><spring:message code="diachi" /></th>
				<th width="120"><spring:message code="malop" /></th>
				<th width="60"><spring:message code="sua" /></th>
				<th width="60"><spring:message code="xoa" /></th>
			</tr>
			<c:forEach items="${danhSachSinhVien}" var="sv" varStatus="stt">
				<tr>
					<td>${stt.count}</td>
					<td>${sv.id}</td>
					<td>${sv.ho}</td>
					<td>${sv.ten}</td>
					<td>${sv.namSinh}</td>
					<td>${sv.gioiTinh}</td>
					<td>${sv.email}</td>
					<td>${sv.SDT}</td>
					<td>${sv.diaChi}</td>
					<td>${sv.lophoc.tenLop}</td>
					
					<td><a href="<c:url value='/danhsach/suasv/${sv.id}' />"><input type="button" value="<spring:message code="sua" />" class="btn btn-primary"/></a></td>
					<td><a href="<c:url value='/danhsach/xoasv/${sv.id}' />"><input style="background-color: limegreen;" type="button" value="<spring:message code="xoa" />" class="btn btn-primary"/></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>