<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
					<form:form cssClass="form-horizontal" modelAttribute="hoso"
						method="POST" action="insert" enctype="multipart/form-data">
						<div class="col-xs-4">

							<h4 class="card-title">Ảnh</h4>
							<div class="form-group">
								<label>Hình Ảnh:</label> <input id="imgUrl" class="form-control"
									type="file" name="file" /> <br> <!-- <img id="img" src="#"
									alt="your image" width="100" height="150" /> -->
							</div>

							<table id="datatable"
								class="table table-striped table-bordered dataex-res-constructor">
								<thead>
									<tr>
										<th>Mã Nhân Viên</th>
										<td><form:hidden path="maNhanVien" /></td>

									</tr>
									<tr>
										<th>Họ Tên</th>
										<td><form:input path="hoTen" /></td>
									</tr>
									<tr>
										<th>Vai Trò</th>
										<td><form:select class="form-control"
												path="vaiTro.maVaiTro">

												<form:options items="${vaitro}" itemValue="maVaiTro"
													itemLabel="tenVaiTro" />
											</form:select></td>
									</tr>
									<tr>
										<th>Phòng Ban</th>
										<td><form:select class="form-control"
												path="phongBan.maPhongBan">

												<form:options items="${phongban}" itemValue="maPhongBan"
													itemLabel="tenPhongBan" />
											</form:select></td>
									</tr>
									<tr>
										<th>Lương</th>
										<td><form:input path="luong" /></td>
									</tr>
									<tr>
										<th>Loại Hợp Đồng</th>
										<td><form:input path="maHopDong" /></td>
									</tr>

									<tr>
										<th>Ca Làm Việc</th>
										<td><form:input path="caLamViec" /></td>
									</tr>
									<tr>
										<th>Vị Trí Làm Việc</th>
										<td><form:input path="viTri" /></td>
									</tr>
									<tr>
										<th>Ngày Tham Gia</th>
										<td><form:input path="ngayThamGia"
												cssClass="form-control round" type="date" /></td>
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
															<td><form:input path="sdt" /></td>
														</tr>
														<tr>
															<th>Số hợp đồng</th>
															<td><form:input path="soHopDong" /></td>
														</tr>
														<tr>
															<th>Email</th>
															<td><form:input path="email" /></td>
														</tr>
														<tr>
															<th>Giới tính</th>
															<td><form:radiobuttons path="maGioiTinh" items="${listgender}"/></td>
														</tr>
														<tr>
															<th>Ngày Sinh</th>
															<td><form:input path="ngaySinh"
																	cssClass="form-control round" type="date" /></td>
														</tr>
														<tr>
															<th>Tình trạng hôn nhân</th>
															<td><form:radiobuttons path="tinhTrangHonNhan" items="${marital}"/></td>
														</tr>
														<tr>
															<th>Tên bố</th>
															<td><form:input path="tenBo" /></td>
														</tr>
														<tr>
															<th>Tên mẹ</th>
															<td><form:input path="tenMe" /></td>
														</tr>
														<tr>
															<th>Kinh nghiệm</th>
															<td><form:input path="kinhNghiem" /></td>
														</tr>
														<tr>
															<th>Trình độ chuyên môn</th>
															<td><form:input path="trinhDoChuyenMon" /></td>
														</tr>
														<tr>
															<th>Ghi chú</th>
															<td><form:input path="note" /></td>
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
															<td><form:input path="diaChiThuongTru" /></td>
														</tr>
														<tr>
															<th>Địa chỉ hiện tại</th>
															<td><form:input path="diaChiHienTai" /></td>
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
															<td><form:input path="tenNganHang" /></td>
														</tr>
														<tr>
															<th>Sô tài khoản</th>
															<td><form:input path="soTaiKhoan" /></td>
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
															<td><form:input path="lienHeKhac" /></td>
														</tr>
													</thead>


												</table>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="text-xs-right">
							<button type="submit" class="btn btn-success">
								Submit <i class="fa fa-thumbs-o-up position-right"></i>
							</button>
							<button type="reset" class="btn btn-danger">
								Reset <i class="fa fa-refresh position-right"></i>
							</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/view/templates/footer.jsp" />