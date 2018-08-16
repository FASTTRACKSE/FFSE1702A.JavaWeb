<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-9 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Thông tin hợp đồng</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
							<li class="breadcrumb-item"><a href="#">Quản lý nhân sự</a>
							</li>
							<li class="breadcrumb-item"><a href="#">Quản lý hồ sơ</a></li>
							<li class="breadcrumb-item active">Thông tin hợp đồng</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="content-header-right col-md-3 col-xs-12">
				<div role="group" aria-label="Button group with nested dropdown"
					class="dropdown nav-item float-md-right">
					<div role="group" class="btn-group">
						<button id="btnGroupDrop1" type="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"
							class="btn btn-outline-primary dropdown-toggle">
							<i class="ft-settings icon-left"></i> Thông tin khác
						</button>
						<div aria-labelledby="btnGroupDrop1"
							class="dropdown-menu dropdown-menu-right">
							<a href="#" class="dropdown-item"><i class="ft-user"></i>
								Thông tin hồ sơ</a> <a href="#" class="dropdown-item"><i
								class="ft-user"></i> Thông tin bằng cấp</a> <a href="#"
								class="dropdown-item"><i class="ft-user"></i> Thông tin
								chứng chỉ chuyên môn</a> <a href="#" class="dropdown-item"><i
								class="ft-user"></i> Thông tin gia đình</a> <a href="#"
								class="dropdown-item"><i class="ft-user"></i> Thông tin hợp
								đồng</a> <a href="#" class="dropdown-item"><i class="ft-user"></i>
								Thông tin kinh nghiệm dự án</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item text-xs-center">Xem tất cả</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content-body">
			<!-- Basic form layout section start -->
			<section id="horizontal-form-layouts">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title" id="horz-layout-basic">Thông tin hồ
									sơ</h4>
								<a class="heading-elements-toggle"><i
									class="fa fa-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
										<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
										<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
										<li><a data-action="close"><i class="ft-x"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="card-body collapse in">
								<div class="card-block">
									<form:form class="form form-horizontal" method="POST"
										action="/ffse-fbms/ns/hop_dong/save" modelAttribute="hopDong">
										<div class="form-body">
											<div class="row">
												<div class="col-md-8">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label>Mã nhân viên</label>
																<fmt:formatNumber type="number" var="maNhanVienFormat"
																	minIntegerDigits="5" groupingUsed="false"
																	value="${hoSoNhanVien.maNhanVien}" />
																<input placeholder="Mã nhân viên" class="form-control"
																	value="${maNhanVienFormat}" disabled type="text">
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label>Trạng thái hồ sơ</label> <select
																	class="form-control" disabled>
																	<option>${hoSoNhanVien.trangThai == 1 ? "Đang làm việc" : "Nghỉ việc"}</option>
																</select>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label>Phòng ban</label> <select class="form-control"
																	disabled>
																	<option>${hoSoNhanVien.phongBan.tenPhongBan}</option>
																</select>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label>Chức danh</label> <select class="form-control"
																	disabled>
																	<option>${hoSoNhanVien.chucDanh.tenChucDanh}</option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-4" style="text-align: center !important;">
													<img width="175px" height="175px"
														src="/ffse-fbms/resources/images/nhan-vien/${hoSoNhanVien.anhDaiDien}">
												</div>
											</div>
											<h4 class="form-section">
												<i class="ft-user"></i> Thông tin hợp đồng
											</h4>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label>Mã hợp đồng</label>
														<form:input class="form-control" path="maHopDong"
															placeholder="Mã Hợp Đồng" />
										      			<form:hidden path="hoSoNhanVien.maNhanVien" />
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Tên hợp đồng</label>
														<form:select multiple="single"
															path="loaiHopDong.maLoaiHopDong" class="form-control">
															<form:option selected="true" disabled="true" value="0"
																label="Chọn hợp đồng" />
															<form:options items="${listLoaiHopDong}"
																itemValue="maLoaiHopDong" itemLabel="tenHopDong" />
														</form:select>
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Trạng Thái</label>
														<form:select multiple="single" path="trangThai"
															class="form-control">
															<form:option selected="true" disabled="true" value="0"
																label="Chọn trạng thái" />
															<form:option value="1" label="Còn hợp đồng" />
															<form:option value="2" label="Hết hợp đồng" />
														</form:select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
														<label>Lương tháng 13</label>
														<form:input class="form-control" path="luongThang13"
															placeholder="Lương Tháng 13" />
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label>Số ngày phép</label>
														<form:input class="form-control" path="soNgayPhep"
															placeholder="Số Ngày Phép" />
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label>Ngày ký hợp đồng</label>
														<form:input type="date" class="form-control"
															path="ngayKyKet" placeholder="Ngày ký kết"
															data-toggle="tooltip" data-trigger="hover"
															data-placement="top" data-title="Date Opened" />
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label>Ngày kết thúc</label>
														<form:input type="date" class="form-control"
															path="ngayKetThuc" placeholder="Ngày kết thúc"
															data-toggle="tooltip" data-trigger="hover"
															data-placement="top" data-title="Date Opened" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-actions center">
											<button type="button" class="btn btn-warning mr-1">
												<i class="ft-x"></i> Hủy
											</button>
											<button type="submit" class="btn btn-primary">
												<i class="fa fa-check-square-o"></i> Lưu
											</button>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- // Basic form layout section end -->
		</div>
	</div>
</div>
<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
