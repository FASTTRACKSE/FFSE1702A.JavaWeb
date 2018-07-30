<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tg"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tg:header page_title="quản lý sinh viên"
	page_description="quản lý sinh viên" page_keywords="quản lý sinh viên"></tg:header>
<body>
	<div class="container">
		<h1>Thêm sinh viên</h1>
		<div class="row">
			<form:form method="POST" action="/SpringMVC/students/editStudent" modelAttribute="student">
				<form:input path="id" value="${student.id}" type="hidden"/>
				<div class="form-group col-sm-6">
				  	<label>Họ đệm</label>
				  	<form:input class="form-control" path="hoDem" placeholder="Họ và tên đệm"/>
				</div>
				<div class="form-group col-sm-6">
				  	<label>Tên</label>
				  	<form:input class="form-control" path="ten" placeholder="Tên"/>
				</div>
				<div class="form-group col-sm-6">
				  	<label>Mã SV</label>
				  	<form:input class="form-control" path="maSV" placeholder="Mã sinh viên"/>
				</div>
				<div class="form-group col-sm-6">
				  	<label>Lớp</label>
				  	<form:select class="form-control" path="maLop">
				  		<c:forEach var="entry" items="${listLop}">
				  				<option value="${entry.maLop}" 
				  				<c:if test="${entry.maLop == student.maLop}">selected="selected"</c:if>>
				  				${entry.tenLop}
				  				</option>
				  		</c:forEach>
				  	</form:select>
				</div>
				<div class="form-group col-sm-6">
				  	<label>Điện thoại</label>
				  	<form:input type="text" class="form-control" path="dienThoai" placeholder="Số điện thoại"/>
				</div>
				<div class="form-group col-sm-6">
				  	<label>Email</label>
				  	<form:input type="email" class="form-control" path="email" placeholder="Email..."/>
				</div>
				<div class="form-group col-sm-6">
				  	<label>Năm sinh</label>
				  	<form:input type="number" class="form-control" path="namSinh"/>
				</div>
				<div class="form-group col-sm-6">
				  	<label>Giới tính</label>
				  	<div>
				  		<ul class="list-inline">
				  			<li>
				  				<div class="radio">
								  	<label><form:radiobutton value="0" path="gioiTinh" checked="checked"/>Nam</label>
								</div>
				  			</li>
				  			<li>
				  				<div class="radio">
								  	<label><form:radiobutton value="1" path="gioiTinh"/>Nữ</label>
								</div>
				  			</li>
				  		</ul>
				  	</div>
				</div>
				
				<div class="form-group col-sm-12">
				  	<label>Địa chỉ</label>
				  	<form:textarea row="3" class="form-control" path="diaChi" placeholder="Địa chỉ"></form:textarea>
				</div>
				<div class="col-sm-12 text-center">
					<button type="submit" class="btn btn-success">Lưu sinh viên</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>