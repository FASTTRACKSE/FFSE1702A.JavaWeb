<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<style>
.tbl_actions a {
	color: #333;
	font-size: 13px;
	display: inline-block;
	padding: 2px 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #FFF;
}

.tbl_actions a i {
	margin-right: 3px;
}

.green {
	color: #5cb85c;
}

.blue {
	color: #337ab7;
}

.red {
	color: #d9534f;
}

#datatable tr td:last-child {
	letter-spacing: 15px;
	min-width: 100px;
	text-align: center !important;
}

#datatable>thead>tr>th:last-child[class*="sort"]::after {
	content: ""
}

#datatable>thead>tr>th:last-child[class*="sort"]::before {
	content: ""
}

.col-xs-4 {
	margin-top: 40px;
}
</style>
<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<!-- Path -->
		<div class="content-header row">
			=
			<div class="content-header-right col-md-3 col-xs-12">
				<div role="group" aria-label="Button group with nested dropdown"
					class="btn-group float-md-right" id="add-new">
					<a href="<c:url value = "/QuanTriHeThong/chuc_nang/add"/>"
						class="btn btn-primary"><span class="fa fa-plus"></span> Thêm
						mới</a>
				</div>
			</div>
		</div>
		<!-- End Path -->

		<div class="content-body">


			<!-- End Show message -->

			<div class="row">
				<div class="col-xs-12">
					<div class="col-xs-4">

						<h4 class="card-title">Ảnh</h4>
						<table id="datatable"
							class="table table-striped table-bordered dataex-res-constructor">
							<thead>
								<tr>
									<th>Mã Nhân Viên</th>

								</tr>
								<tr>
									<th>Vai Trò</th>
                                </tr>
                                <tr>
									<th>Phòng Ban</th>
                                </tr>
                                <tr>
									<th>Lương</th>
                                </tr>
                                <tr>
									<th>Loại Hợp Đồng</th>
                                </tr>
                                <tr>
									<th>Loại Hợp Đồng</th>
                                </tr>
                                <tr>
									<th>Ca Làm Việc</th>
                                </tr>
                                <tr>
									<th>Vị Trí Làm Việc</th>
                                </tr>
                                <tr>
									<th>Ngày Tham Gia</th>
                                </tr>
							</thead>
							<tbody>
							<c:forEach var="hs" items="${hoso }" varStatus="count">
									<tr>
										<th scope="row">${count.count  }</th>
									</tr>
									<tr>
										<th scope="row">${hs.maNhanVien  }</th>
									</tr>
									<tr>
										<th scope="row">${hs.maVaiTro  }</th>
									</tr>
									<tr>
										<th scope="row">${hs.maPhongBan  }</th>
									</tr>
									</c:forEach>

							</tbody>
						</table>
					</div>
					<div class="col-xs-8">
						<div>
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Hồ sơ</h4>
									<a class="heading-elements-toggle"><i
										class="fa fa-ellipsis-v font-medium-3"></i></a>

								</div>
								<div class="card-body collapse in">
									<div class="card-block card-dashboard">
										<div class="table-responsive">
											<table id="datatable"
												class="table table-striped table-bordered dataex-res-constructor">
												<thead>
													<tr>
														<th>Mã Nhân Viên</th>
														<th>Tên Tên Nhân Viên</th>
														<th>Action</th>
													</tr>
												</thead>


											</table>

										</div>
									</div>
								</div>
							</div>



							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Địa chỉ</h4>
									<a class="heading-elements-toggle"><i
										class="fa fa-ellipsis-v font-medium-3"></i></a>

								</div>
								<div class="card-body collapse in">
									<div class="card-block card-dashboard">
										<div class="table-responsive">
											<table id="datatable"
												class="table table-striped table-bordered dataex-res-constructor">
												<thead>
													<tr>
														<th>Mã Nhân Viên</th>
														<th>Tên Tên Nhân Viên</th>
														<th>Action</th>
													</tr>
												</thead>


											</table>

										</div>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Tài khoản</h4>
									<a class="heading-elements-toggle"><i
										class="fa fa-ellipsis-v font-medium-3"></i></a>

								</div>
								<div class="card-body collapse in">
									<div class="card-block card-dashboard">
										<div class="table-responsive">
											<table id="datatable"
												class="table table-striped table-bordered dataex-res-constructor">
												<thead>
													<tr>
														<th>Mã Nhân Viên</th>
														<th>Tên Tên Nhân Viên</th>
														<th>Action</th>
													</tr>
												</thead>

											</table>

										</div>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Liên hệ khác</h4>
									<a class="heading-elements-toggle"><i
										class="fa fa-ellipsis-v font-medium-3"></i></a>

								</div>
								<div class="card-body collapse in">
									<div class="card-block card-dashboard">
										<div class="table-responsive">
											<table id="datatable"
												class="table table-striped table-bordered dataex-res-constructor">
												<thead>
													<tr>
														<th>Mã Nhân Viên</th>
														<th>Tên Tên Nhân Viên</th>
														<th>Action</th>
													</tr>
												</thead>


											</table>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/view/templates/footer.jsp" />