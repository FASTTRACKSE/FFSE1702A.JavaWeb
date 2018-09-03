<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<style>
.dash-board-item{
	margin-bottom: 50px;
}
</style>
<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<!-- Path -->
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Dash Board</h3>
			</div>
		</div>
		<!-- End Path -->

		<div class="content-body">
			<div class="row">
				<div class="col-xs-12">
					<div class="card">
						<div class="col-md-3 dash-board-item">
							<a href="<c:url value="/quanlyphanquyen/phong_ban/view/danhSachPhongBan" />" title="">
								<img src="<c:url value="/resources/images/icon_category.gif" />" alt="" />
							</a>
							<div>Quản lý phòng ban</div>
						</div>
						<div class="col-md-3 dash-board-item">
							<a href="<c:url value="/quanlyphanquyen/chuc_danh/view/danhSachChucDanh" />" title="">
								<img src="<c:url value="/resources/images/icon_category.gif" />" alt="" />
							</a>
							<div>Quản lý chức danh</div>
						</div>
						<div class="col-md-3 dash-board-item">
							<a href="<c:url value="/chuc-nang/danh-sach" />" title="">
								<img src="<c:url value="/resources/images/icon_category.gif" />" alt="" />
							</a>
							<div>Quản lý phòng ban</div>
						</div>
						<div class="col-md-3 dash-board-item">
							<a href="<c:url value="/quanlyphanquyen/chuc_nang/view/danhSachChucNang" />" title="">
								<img src="<c:url value="/resources/images/icon_category.gif" />" alt="" />
							</a>
							<div>Quản lý chức năng</div>
						</div>
						<div class="col-md-3 dash-board-item">
							<a href="<c:url value="/tai-khoan/" />" title="">
								<img src="<c:url value="/resources/images/icon_category.gif" />" alt="" />
							</a>
							<div>Quản lý tài khoản</div>
						</div>
						<div class="col-md-3 dash-board-item">
							<a href="<c:url value="/chuc-nang-phong-ban" />" title="">
								<img src="<c:url value="/resources/images/icon_category.gif" />" alt="" />
							</a>
							<div>Quản lý chức năng theo phòng ban và chức danh</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />