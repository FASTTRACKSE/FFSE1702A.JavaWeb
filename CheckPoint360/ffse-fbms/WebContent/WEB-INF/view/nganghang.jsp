<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Nhận xét nhân viên</h3>
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
	</div>
	<div class="content-body">
		<!-- Basic Elements start -->
		<section class="basic-elements">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Tên nhân viên:..........</h4>
						</div>
						<div class="card-body">
							<div class="card-block">
								<div class="row">
									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<c:url var="addAction" value="/xxx"></c:url>
										<form:form action="${addAction}" modelAttribute="danhgia"
											class="form-group>
												<fieldset ">



											<fieldset>
												<label for="helpInputTop">Kỷ luật</label>

												<form:input class="form-control" id="basicInput" type="text"
													path="kyLuat" />

											</fieldset>
									</div>
									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="helpInputTop">Tinh thần làm việc</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="tinhThan" />
										</fieldset>
									</div>
									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="disabledInput">Khối lượng công việc</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="klCongViec" />
										</fieldset>
									</div>
									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="helpInputTop">Kết quả công việc</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="kqCongViec" />
										</fieldset>
									</div>
									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="helpInputTop">Kỹ năng tích lũy</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="kyNang" />

										</fieldset>
									</div>
									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="disabledInput">Định hướng</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="dinhHuong" />

										</fieldset>
									</div>

									<!-- Hiden input open!!! -->

									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="disabledInput">Phòng Ban</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="phongBan" />

										</fieldset>
									</div>

									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="disabledInput">người đánh giá</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="nguoiDanhGia" />

										</fieldset>
									</div>
									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="disabledInput">Người được đánh giá</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="nguocDuocDanhGia" />

										</fieldset>
									</div>

									<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
										<fieldset class="form-group">
											<label for="disabledInput">kỳ đánh giá</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="kyDanhGia" />

										</fieldset>
									</div>



									<!-- Hiden input Close!!! -->



									<button class="button1" type="submit">
										<span>Gửi đánh giá</span>
									</button>
									</form:form>




								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>

<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />