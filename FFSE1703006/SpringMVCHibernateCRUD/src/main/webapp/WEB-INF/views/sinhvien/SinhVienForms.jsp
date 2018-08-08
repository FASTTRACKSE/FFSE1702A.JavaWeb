<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>~ JunBjn ~</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
</head>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<body>
	<div class="container">
		<form:form method="POST" action="/CRUDSpring/save_list" commandName="listSinhVien">
		<c:if test="${!empty sinhVien.maSinhVien}">
			<div class="form-group">
			  <h5><spring:message code="label.student_id" /></h5>
			  <form:input class="form-control" path="listSinhVien[0].maSinhVien" readonly="true" disabled="true" />
			  <form:hidden path="listSinhVien[0].maSinhVien" />
			</div>
		</c:if>
		
		    <div class="form-group">
		      <h5><spring:message code="label.firstname" /></h5>
		      <form:input class="form-control" path="listSinhVien[0].hoDem"/>
		      <form:errors path="listSinhVien[0].hoDem" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.lastname" /></h5>
		      <form:input class="form-control" path="listSinhVien[0].ten"/>
		      <form:errors path="listSinhVien[0].ten" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.birth_year" /></h5>
		      <form:input class="form-control" path="listSinhVien[0].namSinh" value=""/>
		      <form:errors path="listSinhVien[0].namSinh" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.sex" /></h5>
		      <div class="custom-control custom-radio custom-control-inline">
		    	<form:radiobutton class="form-check-input" path="listSinhVien[0].gioiTinh" value="Nam"/><spring:message code="label.male" />
	          </div>
	          <div class="custom-control custom-radio custom-control-inline">
	            <form:radiobutton class="form-check-input" path="listSinhVien[0].gioiTinh" value="Nữ"/><spring:message code="label.female" />
	          </div>
		      <div><form:errors path="listSinhVien[0].gioiTinh" cssClass="invalid-feedback d-block" /></div>
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.email" /></h5>
		      <form:input class="form-control" path="listSinhVien[0].email"/>
		      <form:errors path="listSinhVien[0].email" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.phone" /></h5>
		      <form:input class="form-control" path="listSinhVien[0].dienThoai" value=""/>
		      <form:errors path="listSinhVien[0].dienThoai" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.address" /></h5>
		      <form:input class="form-control" path="listSinhVien[0].diaChi"/>
		      <form:errors path="listSinhVien[0].diaChi" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.class" /></h5>
		      <form:select path="listSinhVien[0].lopHoc.maLop" items="${lopHoc}" multiple="true" itemValue="maLop" itemLabel="tenLop" class="form-control" />
		      <form:errors path="listSinhVien[0].lopHoc.maLop" cssClass="invalid-feedback d-block" />
		    </div>
		    <hr>
			<div class="form-group">
		      <h5><spring:message code="label.firstname" /></h5>
		      <form:input class="form-control" path="listSinhVien[1].hoDem"/>
		      <form:errors path="listSinhVien[1].hoDem" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.lastname" /></h5>
		      <form:input class="form-control" path="listSinhVien[1].ten"/>
		      <form:errors path="listSinhVien[1].ten" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.birth_year" /></h5>
		      <form:input class="form-control" path="listSinhVien[1].namSinh" value=""/>
		      <form:errors path="listSinhVien[1].namSinh" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.sex" /></h5>
		      <div class="custom-control custom-radio custom-control-inline">
		    	<form:radiobutton class="form-check-input" path="listSinhVien[1].gioiTinh" value="Nam"/><spring:message code="label.male" />
	          </div>
	          <div class="custom-control custom-radio custom-control-inline">
	            <form:radiobutton class="form-check-input" path="listSinhVien[1].gioiTinh" value="Nữ"/><spring:message code="label.female" />
	          </div>
		      <div><form:errors path="listSinhVien[1].gioiTinh" cssClass="invalid-feedback d-block" /></div>
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.email" /></h5>
		      <form:input class="form-control" path="listSinhVien[1].email"/>
		      <form:errors path="listSinhVien[1].email" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.phone" /></h5>
		      <form:input class="form-control" path="listSinhVien[1].dienThoai" value=""/>
		      <form:errors path="listSinhVien[1].dienThoai" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.address" /></h5>
		      <form:input class="form-control" path="listSinhVien[1].diaChi"/>
		      <form:errors path="listSinhVien[1].diaChi" cssClass="invalid-feedback d-block" />
		    </div>
		    <div class="form-group">
		      <h5><spring:message code="label.class" /></h5>
		      <form:select path="listSinhVien[1].lopHoc.maLop" items="${lopHoc}" multiple="true" itemValue="maLop" itemLabel="tenLop" class="form-control" />
		      <form:errors path="listSinhVien[1].lopHoc.maLop" cssClass="invalid-feedback d-block" />
		    </div>

		  <button type="submit" name="submit" class="btn btn-primary"><spring:message code="label.submit" /></button>
		  <a href="/CRUDSpring"><button type="button" class="btn btn-outline-secondary"><spring:message code="label.cancel" /></button></a>
		</form:form>
	</div>
</body>
</html>