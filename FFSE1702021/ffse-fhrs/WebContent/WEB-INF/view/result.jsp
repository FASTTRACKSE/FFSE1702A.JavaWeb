<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
										<c:forEach var="hs" items="${list }" >
											<tr>

												<td><fmt:formatNumber type="number" var="maNhanVien" minIntegerDigits="5" groupingUsed="false" value="${hs.maNhanVien }" />${maNhanVien}</td>
												<td>${hs.hoTen}</td>
												<td><a href="/ffse-fbms/quantrinhansu/hosonhanvien/${maNhanVien}">xem</a>..<a href="#">xóa</a></td>
												

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
<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />