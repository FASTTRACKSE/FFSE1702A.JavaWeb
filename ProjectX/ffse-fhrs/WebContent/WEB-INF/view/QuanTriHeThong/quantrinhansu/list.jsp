<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url var="deletelink" value="/quantrinhansu/delete/" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Danh sách hồ sơ</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Tables</a></li>
							<li class="breadcrumb-item active">Table Styling</li>
							<li class="breadcrumb-item"><a href="/ffse-fbms/quantrinhansu/themmoi">Thêm mới</a></li>
						</ol>
					</div>
				</div>
				<%-- <div >
		<div role="group" aria-label="Button group with nested dropdown"
			class="btn-group float-md-right" id="add-new">
			<a href="<c:url value = "/quantrinhansu/themmoi"/>" class="btn "><span
				class="fa fa-plus"></span> Thêm mới</a>
		</div>
	</div> --%>
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

						<div class="card-body collapse in">
							<div class="card-block card-dashboard"></div>
							<div class="table-responsive">
								<table
									class="table table-striped table-bordered zero-configuration dataTable"
									id="DataTables_Table_0" role="grid"
									aria-describedby="DataTables_Table_0_info">
									<thead>
										<tr role="row" style="background-color: pink" style="color:">
											<th class="sorting_asc" tabindex="0"
												aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
												aria-sort="ascending"
												aria-label="Name: activate to sort column descending"
												style="width: 113px;">Mã Nhân Viên</th>
											<th class="sorting_asc" tabindex="0"
												aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
												aria-sort="ascending"
												aria-label="Name: activate to sort column descending"
												style="width: 113px;">Tên Nhân Viên</th>

											<th class="sorting" tabindex="0"
												aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
												aria-label="Position: activate to sort column ascending"
												style="width: 182.333px;">Action</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="hs" items="${list }">
											<tr>

												<td><fmt:formatNumber type="number" var="maNhanVien"
														minIntegerDigits="5" groupingUsed="false"
														value="${hs.maNhanVien }" />${maNhanVien}</td>
												<td>${hs.hoTen}</td>

												<td> <a
													href="/ffse-fbms/quantrinhansu/hosonhanvien/${maNhanVien}"
													data-toggle="tooltip" title="view!"><button
															type="button" class="btn btn-icon btn-outline-info">
															<i class="fa fa-eye"></i>
														</button></a> <a href="/ffse-fbms/quantrinhansu/capnhat/${maNhanVien}"
													data-toggle="tooltip" title="edit!"><button
															type="button" class="btn btn-icon btn-outline-warning">
															<i class="fa fa-gavel"></i>
														</button></a>


													<button type="button"
														class="btn btn-outline-danger btn-icon checkid"
														data-toggle="modal"
														data-link="${deletelink }${maNhanVien}"
														data-target="#danger">
														<i class="fa fa-trash-o"></i>
													</button></td>


											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th rowspan="1" colspan="1">Mã Nhân Viên</th>
											<th rowspan="1" colspan="1">Tên Nhân Viên</th>

										</tr>
									</tfoot>
								</table>
							</div>

							<!-- Table header styling end -->
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>

<script>
$(document).ready(function() {
    $('#tbl_id').dataTable({
        "aLengthMenu": [[3, 50, 75, -1], [3, 50, 75, "All"]],
        "iDisplayLength": 25
    });

</script>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
<script>
	$(document).ready(function() {
		$('.checkid').click(function() {
			var link = $(this).attr("data-link");
			$("#deletemodal").attr("href", link);
		});
	});
</script>
<!-- modal -->
<div class="modal fade text-xs-left" id="danger" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel10" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-danger white">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel10">
					<p>Xóa</p>
				</h4>
			</div>
			<div class="modal-body">
				<h5>
					<p>Bạn có muốn xóa</p>
				</h5>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn grey btn-outline-secondary"
					data-dismiss="modal">
					<p>No</p>
				</button>
				<a id="deletemodal" href="${deletelink }"><button type="button"
						class="btn btn-outline-danger">
						<p>Yes</p>
					</button></a>
			</div>
		</div>
	</div>
</div>
<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />