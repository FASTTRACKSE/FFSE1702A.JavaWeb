<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		
		<!-- End Path -->

		<div class="content-body">


			<!-- End Show message -->

			<div class="row">
				<div class="col-xs-12">
					<form:form cssClass="form-horizontal" modelAttribute="hoso">
						<div class="col-xs-4">

							<h4 class="card-title">Ảnh</h4>
							 <img id="img" src="<c:url value="/uploads/${hoso.img }"/>"
									 width="100" height="150" />
							<table id="datatable"
								class="table table-striped table-bordered dataex-res-constructor">
								<thead>

									<tr>


										<th>Mã Nhân Viên</th>
										<fmt:formatNumber type="number" var="maNhanVienFormat"
											minIntegerDigits="5" groupingUsed="false"
											value="${hoso.maNhanVien}" />
										<td><form:input class="form-control" path="maNhanVien"
												value="${maNhanVienFormat}" readonly="true" disabled="true" /></td>

									</tr>
									<tr>
										<th>Vai Trò</th>
										<td><form:input readonly="true" path="vaiTro.tenVaiTro"
												disabled="true" /></td>
									</tr>
									<tr>
										<th>Phòng Ban</th>
										<td><form:input readonly="true"
												path="phongBan.tenPhongBan" disabled="true" /></td>
									</tr>
									<tr>
										<th>Lương</th>
										<td><form:input readonly="true" path="luong"
												disabled="true" /></td>
									</tr>
									<tr>
										<th>Loại Hợp Đồng</th>
										<td><form:input readonly="true" path="maHopDong"
												disabled="true" /></td>
									</tr>

									<tr>
										<th>Ca Làm Việc</th>
										<td><form:input readonly="true" path="caLamViec"
												disabled="true" /></td>
									</tr>
									<tr>
										<th>Vị Trí Làm Việc</th>
										<td><form:input readonly="true" path="viTri"
												disabled="true" /></td>
									</tr>
									<tr>
										<th>Ngày Tham Gia</th>
										<td><form:input readonly="true" path="ngayThamGia"
												disabled="true" /></td>
									</tr>
								</thead>
								<tbody>







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
															<th>Phone</th>
															<td><form:input readonly="true" path="sdt"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Số hợp đồng</th>
															<td><form:input readonly="true" path="soHopDong"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Email</th>
															<td><form:input readonly="true" path="email"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Giới tính</th>
															<td><form:input readonly="true" path="maGioiTinh"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Ngày Sinh</th>
															<td><form:input readonly="true" path="ngaySinh"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Tình trạng hôn nhân</th>
															<td><form:input readonly="true"
																	path="tinhTrangHonNhan" disabled="true" /></td>
														</tr>
														<tr>
															<th>Tên bố</th>
															<td><form:input readonly="true" path="tenBo"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Tên mẹ</th>
															<td><form:input readonly="true" path="tenMe"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Kinh nghiệm</th>
															<td><form:input readonly="true" path="kinhNghiem"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Ghi chú</th>
															<td><form:input readonly="true" path="note"
																	disabled="true" /></td>
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
															<th>Địa chỉ thường trú</th>
															<td><form:input readonly="true"
																	path="diaChiThuongTru" disabled="true" /></td>
														</tr>
														<tr>
															<th>Địa chỉ hiện tại</th>
															<td><form:input readonly="true" path="diaChiHienTai"
																	disabled="true" /></td>
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
															<th>Tên ngân hàng</th>
															<td><form:input readonly="true" path="tenNganHang"
																	disabled="true" /></td>
														</tr>
														<tr>
															<th>Sô tài khoản</th>
															<td><form:input readonly="true" path="soTaiKhoan"
																	disabled="true" /></td>
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
															<th>FaceBook</th>
															<td><form:input readonly="true" path="lienHeKhac"
																	disabled="true" /></td>
														</tr>
													</thead>


												</table>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/view/templates/footer.jsp" />