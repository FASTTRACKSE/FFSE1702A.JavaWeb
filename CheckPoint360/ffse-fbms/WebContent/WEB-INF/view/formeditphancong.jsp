<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Danh sách nhân viên</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12"></div>
				</div>
			</div>
			<div class="content-header-right col-md-6 col-xs-12">
				<div role="group" aria-label="Button group with nested dropdown"
					class="btn-group float-md-right">
					<div role="group" class="btn-group">
						<button id="btnGroupDrop1" type="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"
							class="btn btn-outline-primary dropdown-toggle dropdown-menu-right">
							<i class="ft-settings icon-left"></i> Settings
						</button>
						<div aria-labelledby="btnGroupDrop1" class="dropdown-menu">
							<a href="card-bootstrap.html" class="dropdown-item">Bootstrap
								Cards</a><a href="component-buttons-extended.html"
								class="dropdown-item">Buttons Extended</a>
						</div>
					</div>
					<a href="calendars-clndr.html" class="btn btn-outline-primary"><i
						class="ft-mail"></i></a><a href="timeline-center.html"
						class="btn btn-outline-primary"><i class="ft-pie-chart"></i></a>
				</div>
			</div>
		</div>
		<div class="content-body">

			<!-- Table header styling start -->
			<div class="row" id="header-styling">
				<div class="col-xs-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Tạo danh sách đánh giá cho Phòng Ban
								:..........</h4>
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
							<div class="card-block card-dashboard"></div>
							<form:form action="phancongdanhgia" method="post" modelAttribute="phancong">
								<div class="table-responsive">
									<table class="table">
										<thead class="bg-success">
											<tr>
												<th>Mã Nhân Viên</th>
												<th>Họ tên đệm</th>
												<th>Tên</th>

												<th>MSNV đánh giá 1</th>
												<th>MSNV đánh giá 2</th>
												<th>MSNV đánh giá 3</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach items="${DanhSachNhanVien}" var="ds">
												<tr>
													<td>${ds.maNhanVien}</td>
													<td>${ds.hoDem}</td>
													<td>${ds.ten}</td>
													<td><form:select name="Events" path="nhanVienDanhGia1">
															<option value="Null">Null</option>
															<c:forEach items="${DanhSachNhanVien}" var="ds">
																<option value="${ds.maNhanVien}">${ds.maNhanVien}</option>
															</c:forEach>
														</form:select></td>


													<td><form:select name="Events" path="nhanVienDanhGia2">
															<option value="Null">Null</option>
															<c:forEach items="${DanhSachNhanVien}" var="ds">
																<option value="${ds.maNhanVien}">${ds.maNhanVien}</option>
															</c:forEach>
														</form:select></td>


													<td><form:select name="Events" path="nhanVienDanhGia3">
															<option value="Null">Null</option>
															<c:forEach items="${DanhSachNhanVien}" var="ds">
																<option value="${ds.maNhanVien}">${ds.maNhanVien}</option>
															</c:forEach>
														</form:select></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							<!-- 	<form:input class="form-control" id="basicInput" value="1" type="text" 
									path="nhanVienDuocDanhGia" />-->
								<form:input class="form-control" id="basicInput" value="FFSE" type="text"
									path="phongBan" />
								<button class="button1" type="submit">
									<span>Lưu bảng phân công</span>
								</button>
							</form:form>



						</div>

						<!-- Table header styling end -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
