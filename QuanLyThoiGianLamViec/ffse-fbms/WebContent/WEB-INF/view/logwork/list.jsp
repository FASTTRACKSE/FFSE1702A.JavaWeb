<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-body">
			<div class="row" id="default">
				<div class="col-xs-12">
					<h1>Danh sách logwork</h1>
					<table class=table>
						<tr>
							<th>ID</th>
							<th>Tên logwork</th>
							<th>Mã dự án</th>
							<th>Mã nhân viên</th>
							<th>Mô tả</th>
							<th>Thời gian bắt đầu</th>
							<th>Thời gian kết thúc</th>
							<th>Thời gian ước tính</th>
							<th>Trạng thái</th>
							<th>Lí do từ chối</th>
						</tr>
						<c:forEach var="list" items="${listLogwork}">
							<tr>
								<td>${list.id}</td>
								<td>${list.maNhanVien}</td>
								<td>${list.maDuAn}
								<td>${list.tenCongViec}</td>
								<td>${list.moTa}</td>
								<td>${list.trangThai}</td>
								<td>${list.thoiGianBatDau}</td>
								<td>${list.thoiGianKetThuc}</td>
								<td>${list.thoiGianUocLuong}</td>
								<td>${list.lyDoTuChoi}</td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
