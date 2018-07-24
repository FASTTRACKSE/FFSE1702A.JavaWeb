<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Trang Sinh Viên</title>
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

	<c:if test="${empty sinhvien.id}">
	<h1 class="control-label col-sm-4">
	<spring:message code="them"/>
	</h1>
	</c:if>


<c:url var="addAction" value="/danhsach/themsv" ></c:url>

<form:form action="${addAction}" modelAttribute="sinhvien">
<table class="table table-striped table-hover table-bordered tableUpdated" style="width:50%;">
	<c:if test="${not empty sinhvien.id}">
	<h1 class="control-label"><spring:message code="EditEmployee"/></h1>
	<tr>
		<td style="width:150px;">
			<form:label path="id">
				<spring:message code="id"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td style="width:250px;">
			<form:label path="ho">
				<spring:message code="ho"/>
			</form:label>
		</td>
		<td>
			<form:input path="ho" class="form-control"/>
		</td> 
	</tr>
		<tr>
		<td>
			<form:label path="ten">
				<spring:message code="ten"/>
			</form:label>
		</td>
		<td>
			<form:input path="ten" class="form-control" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="namSinh">
				<spring:message code="namsinh"/>
			</form:label>
		</td>
		<td>
			<form:input path="namSinh" class="form-control"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="gioiTinh">
				<spring:message code="gioitinh"/>
			</form:label>
		</td>
		<td>
			<form:radiobutton path="gioiTinh" value="Nam"/><spring:message code="nam"/>
			<form:radiobutton path="gioiTinh" value="Nữ"/><spring:message code="nu"/> 
			<form:radiobutton path="gioiTinh" value="Khác"/><spring:message code="khac"/> 
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="email">
				<spring:message code="email"/>
			</form:label>
		</td>
		<td>
			<form:input path="email" class="form-control"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="SDT">
				<spring:message code="sdt"/>
			</form:label>
		</td>
		<td>
			<form:input path="SDT" class="form-control"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="diaChi">
				<spring:message code="diachi"/>
			</form:label>
		</td>
		<td>
			<form:input path="diaChi" class="form-control"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="lophoc.maLop">
				<spring:message code="malop"/>
			</form:label>
		</td>
		<td>
			 <div class="form-group">
    			  <form:select path="lophoc.maLop" class="form-control" id="sel1">  	
    			  <c:forEach items="${danhSachLop}" var="lop">		  
      			  <form:option value="${lop.maLop}" label="${lop.tenLop}"/>
      			  </c:forEach>
     			  </form:select>
     		 </div>
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
	<a href="<%= request.getContextPath() %>/danhsach?language=vi"><img src="<c:url value="/assets/flags/blank.gif"/>" class="flag flag-vn" alt="Tiếng Việt"/></a>
	<a href="<%= request.getContextPath() %>/danhsach?language=en"><img src="<c:url value="/assets/flags/blank.gif"/>" class="flag flag-us" alt="English" /></a>
	</div>
	
<br>

<c:if test="${not empty danhSachSinhVien}">
<h3 class="control-label col-sm-4"><spring:message code="danhsach"/></h3>
	<table class="table table-striped table-hover table-bordered tableUpdated" style="text-align:center;">
	<tr>
		<th width="80">ID</th>
		<th width="120"><spring:message code="ho"/></th>
		<th width="120"><spring:message code="ten"/></th>
		<th width="120"><spring:message code="namsinh"/></th>
		<th width="120"><spring:message code="gioitinh"/></th>
		<th width="120"><spring:message code="email"/></th>
		<th width="120"><spring:message code="sdt"/></th>
		<th width="120"><spring:message code="diachi"/></th>
		<th width="120"><spring:message code="malop"/></th>
		<th width="60"><spring:message code="sua"/></th>
		<th width="60"><spring:message code="xoa"/></th>
	</tr>
	<c:forEach items="${danhSachSinhVien}" var="sv">
		<tr>
			<td>${sv.id}</td>
			<td>${sv.ho}</td>
			<td>${sv.ten}</td>
			<td>${sv.namSinh}</td>
			<td>${sv.gioiTinh}</td>
			<td>${sv.email}</td>
			<td>${sv.SDT}</td>
			<td>${sv.diaChi}</td>
			<td>${sv.lophoc.tenLop}</td>
			<td><a href="<c:url value='/danhsach/suasv/${sv.id}' />" ><spring:message code="sua"/></a></td>
			<td><a href="<c:url value='/danhsach/xoasv/${sv.id}' />" ><spring:message code="xoa"/></a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>