<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Tạo danh sách đánh giá</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Tables</a></li>
							<li class="breadcrumb-item active">Tạo danh sách đánh giá</li>
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
						<div class="card-header">
							<h4 class="card-title">Tạo danh sách đánh giá</h4>
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
											<th>Mã nhân viên</th>
											<th>Họ và tên</th>
											<th>Phòng ban</th>
											<th>Nhân viên đánh giá 1</th>
											<th>Nhân viên đánh giá 2</th>
											<th>Nhân viên đánh giá 3</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>10001</td>
											<td>Trần Thanh Tùng</td>
											<td>FFSE</td>
											<td>
									
													<select name=mytextarea size=1>
														<option name=one value=one>Nguyễn Vũ</option>
														<option name=two value=two>Phi Long</option>
														<option name=three value=three selected>Tung</option>
	
													</select>
												

											</td>
											<td>
									
													<select name=mytextarea size=1>
														<option name=one value=one>Nguyễn Anh Vũ</option>
														<option name=two value=two selected>Trần Lâm Phi Long</option>
														<option name=three value=three>Trần Thanh Tùng</option>
													</select>
												

											</td>
											<td>
									
													<select name=mytextarea size=1>
														<option name=one value=one>Nguyễn Anh Vũ</option>
														<option name=two value=two selected>Trần Lâm Phi Long</option>
														<option name=three value=three>Trần Thanh Tùng</option>
	
													</select>
												

											</td>
											
											<tr>
											<td>10002</td>
											<td>Phạm Trần Đức</td>
											<td>FFSE</td>
											<td>
									
													<select name=mytextarea size=1>
														<option name=one value=one>Nguyễn Anh Vũ</option>
														<option name=two value=two selected>Trần Lâm Phi Long</option>
														<option name=three value=three>Trần Thanh Tùng</option>
	
													</select>
												

											</td>
											<td>
									
													<select name=mytextarea size=1>
														<option name=one value=one>Nguyễn Vũ</option>
														<option name=two value=two>Phi Long</option>
														<option name=three value=three selected>Tung</option>
	
													</select>
												

											</td>
											<td>
									
													<select name=mytextarea size=1>
														<option name=one value=one>Nguyễn Vũ</option>
														<option name=two value=two>Phi Long</option>
														<option name=three value=three selected>Tung</option>
	
													</select>
												

											</td>
										</tbody>
								</table>
							</div>

							<!-- Table header styling end -->
							
							
						</div>
				</div>
				<button class="button1" type="submit"><span>Tạo danh sách</span></button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
