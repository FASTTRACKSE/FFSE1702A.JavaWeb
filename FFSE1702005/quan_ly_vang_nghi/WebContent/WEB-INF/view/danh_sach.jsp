<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Tables styling</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Tables</a></li>
							<li class="breadcrumb-item active">Table Styling</li>
						</ol>
					</div>
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

			<!-- Custom row colors start -->
			<div class="row" id="row-color">
				<div class="col-xs-12">
					<div class="card">
						<div class="card-header">
							<c:forEach items="${danhSachXinNghi}" var="nv" begin="0" end="0">
								<c:if test="${nv.trang_thai == 'Chờ Phê Duyệt'}">
									<h4 class="card-title">Danh sách đơn xin nghỉ đang chờ phê
										duyệt</h4>
								</c:if>

								<c:if test="${nv.trang_thai == 'Duyệt'}">
									<h4 class="card-title">Danh sách đơn xin nghỉ đã phê duyệt</h4>
								</c:if>

								<c:if test="${nv.trang_thai == 'Nháp'}">
									<h4 class="card-title">Nháp của tôi</h4>
								</c:if>
							</c:forEach>
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
							<div class="table-responsive">

								<table class="table">
									<thead class="bg-success">
										<tr>
											<th>STT</th>
											<th>Mã nhân viên</th>
											<th>Tên nhân viên</th>
											<th>Phòng ban</th>
											<th>Ngày nghỉ</th>
											<th>Ngày đi làm lại</th>
											<th>Số ngày nghỉ</th>
											<th>Số ngày đã nghỉ</th>
											<th>Số ngày còn lại</th>
											<th>Tình trạng</th>
											<th>Tùy chọn</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${danhSachXinNghi}" var="nv" varStatus="stt">
											<tr class="bg-blue bg-lighten-5">
												<td>${stt.count}</td>
												<td>${nv.ma_nhan_vien}</td>
												<td>${nv.ten_nhan_vien}</td>
												<td>${nv.phong_ban}</td>
												<td>${nv.ngay_nghi}</td>
												<td>${nv.ngay_di_lam_lai}</td>
												<td>${nv.so_ngay_nghi}</td>
												<td>${nv.so_ngay_da_nghi}</td>
												<td>${nv.so_ngay_con_lai}</td>
												<td>${nv.trang_thai}</td>
												<td><a
													href="<%=request.getContextPath()%>/danhsach/don/${nv.ma_don}">
														<button type="submit" class="btn btn-primary">
															<i class="fa fa-check-square-o"></i>Xem
														</button>
												</a> <c:if test="${nv.trang_thai=='Chờ Phê Duyệt'}">
														<button type="submit" class="btn btn-success">
															<i class="fa fa-check-square-o"></i>Duyệt
														</button>
													</c:if> <c:if test="${nv.trang_thai=='Nháp'}">
														<a
															href="<%=request.getContextPath()%>/danhsachnhap/xoadon/${nv.ma_don}">
															<button type="submit" class="btn btn-success">
																<i class="fa fa-check-square-o"></i>Xóa
															</button>
														</a>
													</c:if></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="col-md-7">
									<div class="dataTables_paginate paging_full_numbers"
										id="DataTables_Table_5_paginate">
										<ul class="pagination">
											<li class="paginate_button page-item first disabled"
												id="DataTables_Table_5_first"><a href="#"
												aria-controls="DataTables_Table_5" data-dt-idx="0"
												tabindex="0" class="page-link">First</a></li>
											<li class="paginate_button page-item previous disabled"
												id="DataTables_Table_5_previous"><a href="#"
												aria-controls="DataTables_Table_5" data-dt-idx="1"
												tabindex="0" class="page-link">Previous</a></li>
											<li class="paginate_button page-item active"><a href="#"
												aria-controls="DataTables_Table_5" data-dt-idx="2"
												tabindex="0" class="page-link">1</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="DataTables_Table_5" data-dt-idx="3"
												tabindex="0" class="page-link">2</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="DataTables_Table_5" data-dt-idx="4"
												tabindex="0" class="page-link">3</a></li>
											<li class="paginate_button page-item next"
												id="DataTables_Table_5_next"><a href="#"
												aria-controls="DataTables_Table_5" data-dt-idx="8"
												tabindex="0" class="page-link">Next</a></li>
											<li class="paginate_button page-item last"
												id="DataTables_Table_5_last"><a href="#"
												aria-controls="DataTables_Table_5" data-dt-idx="9"
												tabindex="0" class="page-link">Last</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Custom row colors end -->
		</div>
	</div>
</div>

<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />