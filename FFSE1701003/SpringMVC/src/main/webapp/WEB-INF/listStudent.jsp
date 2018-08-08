<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tg"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tg:header page_title="quản lý sinh viên"
	page_description="quản lý sinh viên" page_keywords="quản lý sinh viên"></tg:header>
<body>
	<section class="container">
	<h1>Danh sách sinh viên</h1>
	<table class="table table-hover">
		<thead>
			<th>STT</th>
			<th>Mã SV</th>
			<th>Họ đệm</th>
			<th>Tên</th>
			<th>Lớp</th>
			<th>Điện thoại</th>
			<th>Email</th>
			<th>Địa chỉ</th>
			<th colspan="2"></th>
		</thead>
		<tbody>
			<c:if test="${not empty listSinhVien}">
				<c:forEach var="sinhvien" items="${listSinhVien}" begin="1" varStatus="counter">
					<tr>
						<td>${counter.index}</td>
						<td>${sinhvien.maSV}</td>
						<td>${sinhvien.hoDem}</td>
						<td>${sinhvien.ten}</td>
						<td>${sinhvien.maLop}</td>
						<td>${sinhvien.dienThoai}</td>
						<td>${sinhvien.email}</td>
						<td>${sinhvien.diaChi}</td>
						<td colspan="2">
							<a href="<c:url value="/students/edit/${sinhvien.id}"/>" class="btn btn-success">Sửa</a>
							<a href="<c:url value="/students/delete/${sinhvien.id}"/>" class="btn btn-danger" >Xóa</a>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<tr></tr>
		</tbody>
	</table>
	</section>
	<tg:footer></tg:footer>
</body>
</html>