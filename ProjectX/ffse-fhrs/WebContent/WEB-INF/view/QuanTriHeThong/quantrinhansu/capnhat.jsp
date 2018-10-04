<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
						class="btn btn-primary"><span class="fa fa-plus"></span> <spring:message
							code="hoso.add"></spring:message></a>
				</div>
			</div>
		</div>
		<!-- End Path -->

		<div class="content-body">


			<!-- End Show message -->

			<div class="row">
				<div class="col-xs-12">
					<c:url value="/quantrinhansu/update" var="update" />
					<form:form cssClass="form-horizontal" modelAttribute="hoso"
						method="POST" action="${update}" enctype="multipart/form-data">
						<div class="col-xs-4">

							<h4 class="card-title">Ảnh</h4>
							<div class="form-group">
								<label>Hình Ảnh:</label> <input id="imgUrl" class="form-control"
									type="file" name="file" /> <br>  <img id="img" src="<c:url value="/uploads/${hoso.img }"/>"
									alt="your image" width="100" height="150" /> 
							</div>



							<table id="datatable"
								class="table table-striped table-bordered dataex-res-constructor">
								<thead>
									<tr>
										<th><h5>
												<spring:message code="hoso.code"></spring:message>
											</h5></th>
										<td><form:hidden path="maNhanVien" /> <form:errors
												path="maNhanVien" cssStyle="color: red"></form:errors></td>

									</tr>
									<tr>
										<th><h5>
												<spring:message code="hoso.name"></spring:message>
											</h5></th>
										<td><form:input path="hoTen" /> <form:errors
												path="hoTen" cssStyle="color: red"></form:errors></td>
									</tr>
									<tr>
										<th><h5>
												<spring:message code="hoso.role"></spring:message>
											</h5></th>
										<td><form:select class="form-control"
												path="vaiTro.maVaiTro">

												<form:options items="${vaitro}" itemValue="maVaiTro"
													itemLabel="tenVaiTro" />
											</form:select> <form:errors path="vaiTro.maVaiTro" cssStyle="color: red"></form:errors>
										</td>
									</tr>
									<tr>
										<th><h5>
												<spring:message code="hoso.room"></spring:message>
											</h5></th>
										<td><form:select class="form-control"
												path="phongBan.maPhongBan">

												<form:options items="${phongban}" itemValue="maPhongBan"
													itemLabel="tenPhongBan" />
											</form:select> <form:errors path="phongBan.maPhongBan"
												cssStyle="color: red"></form:errors></td>
									</tr>
									<tr>
										<th><h5>
												<spring:message code="hoso.salary"></spring:message>
											</h5></th>
										<td><form:input path="luong" /> <form:errors
												path="luong" cssStyle="color: red"></form:errors></td>
									</tr>
									<tr>
										<th><h5>
												<spring:message code="hoso.contracttype"></spring:message>
											</h5></th>
										<td><form:input path="maHopDong" /> <form:errors
												path="maHopDong" cssStyle="color: red"></form:errors></td>
									</tr>

									<tr>
										<th><h5>
												<spring:message code="hoso.workshift"></spring:message>
											</h5></th>
										<td><form:input path="caLamViec" /> <form:errors
												path="caLamViec" cssStyle="color: red"></form:errors></td>
									</tr>
									<tr>
										<th><h5>
												<spring:message code="hoso.location"></spring:message>
											</h5></th>
										<td><form:input path="viTri" /> <form:errors
												path="viTri" cssStyle="color: red"></form:errors></td>
									</tr>
									<tr>
										<th><h5>
												<spring:message code="hoso.dateofparticipation"></spring:message>
											</h5></th>
										<td><form:input path="ngayThamGia"
												cssClass="form-control round" type="date" /> <form:errors
												path="ngayThamGia" cssStyle="color: red"></form:errors></td>
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
										<h4 class="card-title">
											<spring:message code="hoso.profile"></spring:message>
										</h4>
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
															<th><h5>
																	<spring:message code="hoso.phone"></spring:message>
																</h5></th>
															<td><form:input path="sdt" /> <form:errors
																	path="sdt" cssStyle="color: red"></form:errors></td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.numbercontract"></spring:message>
																</h5></th>
															<td><form:input path="soHopDong" /> <form:errors
																	path="soHopDong" cssStyle="color: red"></form:errors></td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.email"></spring:message>
																</h5></th>
															<td><form:input path="email" /> <form:errors
																	path="email" cssStyle="color: red"></form:errors></td>

														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.gender"></spring:message>
																</h5></th>
															<td><form:radiobuttons path="maGioiTinh"
																	items="${listgender}" /> <form:errors
																	path="maGioiTinh" cssStyle="color: red"></form:errors>
															</td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.birday"></spring:message>
																</h5></th>
															<td><form:input path="ngaySinh"
																	cssClass="form-control round" type="date" /> <form:errors
																	path="ngaySinh" cssStyle="color: red"></form:errors></td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.maritalstatus"></spring:message>
																</h5></th>
															<td><form:radiobuttons path="tinhTrangHonNhan"
																	items="${marital}" /> <form:errors
																	path="tinhTrangHonNhan" cssStyle="color: red"></form:errors>
															</td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.namefather"></spring:message>
																</h5></th>
															<td><form:input path="tenBo" /> <form:errors
																	path="tenBo" cssStyle="color: red"></form:errors></td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.namemother"></spring:message>
																</h5></th>
															<td><form:input path="tenMe" /> <form:errors
																	path="tenMe" cssStyle="color: red"></form:errors></td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.experience"></spring:message>
																</h5></th>
															<td><form:input path="kinhNghiem" /> <form:errors
																	path="kinhNghiem" cssStyle="color: red"></form:errors>
															</td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.qualification"></spring:message>
																</h5></th>
															<td><form:input path="trinhDoChuyenMon" /> <form:errors
																	path="trinhDoChuyenMon" cssStyle="color: red"></form:errors>
															</td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.note"></spring:message>
																</h5></th>
															<td><form:input path="note" /> <form:errors
																	path="note" cssStyle="color: red"></form:errors></td>
														</tr>
													</thead>


												</table>

											</div>
										</div>
									</div>
								</div>



								<div class="card">
									<div class="card-header">
										<h4 class="card-title">
											<spring:message code="hoso.address"></spring:message>
										</h4>
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
															<th><h5>
																	<spring:message code="hoso.permanentaddress"></spring:message>
																</h5></th>
															<td><form:input path="diaChiThuongTru" /> <form:errors
																	path="diaChiThuongTru" cssStyle="color: red"></form:errors>
															</td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.currentaddress"></spring:message>
																</h5></th>
															<td><form:input path="diaChiHienTai" /> <form:errors
																	path="diaChiHienTai" cssStyle="color: red"></form:errors>
															</td>
														</tr>
													</thead>


												</table>

											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">
											<spring:message code="hoso.account"></spring:message>
										</h4>
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
															<th><h5>
																	<spring:message code="hoso.bankname"></spring:message>
																</h5></th>
															<td><form:input path="tenNganHang" /> <form:errors
																	path="tenNganHang" cssStyle="color: red"></form:errors>
															</td>
														</tr>
														<tr>
															<th><h5>
																	<spring:message code="hoso.accountnumber"></spring:message>
																</h5></th>
															<td><form:input path="soTaiKhoan" /> <form:errors
																	path="soTaiKhoan" cssStyle="color: red"></form:errors>
															</td>
														</tr>
													</thead>

												</table>

											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">
											<spring:message code="hoso.othercontact"></spring:message>
										</h4>
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