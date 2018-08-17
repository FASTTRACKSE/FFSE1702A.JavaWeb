<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Đánh giá nhân viên</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Form</a></li>
							<li class="breadcrumb-item active">Basic Elements</li>
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


			<!-- Basic Elements start -->
			<section class="basic-elements">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Nhân viên tự đánh giá</h4>
							</div>
							<div class="card-body">
								<div class="card-block">
									<div class="row">
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">Kỷ luật</label>
												<form class="rating" style="position: relative; top: 15px;">

													<label> <input type="radio" name="stars" value="1" />
														<span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="2" />
														<span class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="3" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="4" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="5" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label>

												</form>
												<input type="text" class="form-control" id="basicInput">
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">Tinh thần</label>
												<form class="rating" style="position: relative; top: 15px;">

													<label> <input type="radio" name="stars" value="1" />
														<span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="2" />
														<span class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="3" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="4" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="5" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label>

												</form>
												<input type="text" class="form-control" id="helpInputTop">
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="disabledInput">Khối lượng</label>
												<form class="rating" style="position: relative; top: 15px;">

													<label> <input type="radio" name="stars" value="1" />
														<span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="2" />
														<span class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="3" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="4" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="5" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label>

												</form>
												<input type="text" class="form-control" id="disabledInput">
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">Kết quả</label>
												<form class="rating" style="position: relative; top: 15px;">

													<label> <input type="radio" name="stars" value="1" />
														<span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="2" />
														<span class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="3" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="4" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="5" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label>

												</form>
												<input type="text" class="form-control" id="basicInput">
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">Kỹ năng</label>
												<form class="rating" style="position: relative; top: 15px;">

													<label> <input type="radio" name="stars" value="1" />
														<span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="2" />
														<span class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="3" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="4" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="5" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label>

												</form>
												<input type="text" class="form-control" id="helpInputTop">
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="disabledInput">Định hướng</label>
												<form class="rating" style="position: relative; top: 15px;">

													<label> <input type="radio" name="stars" value="1" />
														<span class="icon"></span>
													</label> <label> <input type="radio" name="stars" value="2" />
														<span class="icon"></span> <span class="icon"></span>
													</label> <label> <input type="radio" name="stars" value="3" />
														<span class="icon"></span> <span class="icon"></span> <span
														class="icon"></span>
													</label> <label> <input type="radio" name="stars" value="4" />
														<span class="icon"></span> <span class="icon"></span> <span
														class="icon"></span> <span class="icon"></span>
													</label> <label> <input type="radio" name="stars" value="5" />
														<span class="icon"></span> <span class="icon"></span> <span
														class="icon"></span> <span class="icon"></span> <span
														class="icon"></span>
													</label>

												</form>
												<input type="text" class="form-control" id="disabledInput">
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">Tổng thể</label>
												<form class="rating" style="position: relative; top: 15px;">

													<label> <input type="radio" name="stars" value="1" />
														<span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="2" />
														<span class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="3" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="4" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span>
													</label> <label> <input type="radio" name="stars" value="5" />
														<span class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span> <span class="icon">★</span> <span
														class="icon">★</span>
													</label>

												</form>

											</fieldset>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Nhận xét của nhân viên khác</h4>
			</div>
			<div class="card-body">
				<div class="card-block">
					<div class="row">
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<fieldset class="form-group">
								<label for="helpInputTop">Kỷ luật</label>
								<c:forEach items="${DanhSach}" var="ds">
									<input type="text" class="form-control" id="basicInput"
										value="${ds.kyLuat}">
								</c:forEach>

							</fieldset>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<fieldset class="form-group">
								<label for="helpInputTop">Tinh thần làm việc</label>
								<c:forEach items="${DanhSach}" var="ds">
									<input type="text" class="form-control" id="basicInput"
										value="${ds.tinhThan}">
								</c:forEach>
							</fieldset>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<fieldset class="form-group">
								<label for="helpInputTop">Khối lượng công việc</label>
								<c:forEach items="${DanhSach}" var="ds">
									<input type="text" class="form-control" id="basicInput"
										value="${ds.klCongViec}">
								</c:forEach>
							</fieldset>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<fieldset class="form-group">
								<label for="helpInputTop">Kết quả công việc</label> 
								<c:forEach items="${DanhSach}" var="ds">
									<input type="text" class="form-control" id="basicInput"
										value="${ds.kqCongViec}">
								</c:forEach>
								
							</fieldset>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<fieldset class="form-group">
								<label for="helpInputTop">Kỹ năng tích lũy</label> 
								<c:forEach items="${DanhSach}" var="ds">
									<input type="text" class="form-control" id="basicInput"
										value="${ds.kyNang}">
								</c:forEach>
							</fieldset>
						</div>
						<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
							<fieldset class="form-group">
								<label for="helpInputTop">Định hướng</label>
								<c:forEach items="${DanhSach}" var="ds">
									<input type="text" class="form-control" id="basicInput"
										value="${ds.dinhHuong}">
								</c:forEach>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Basic Elements start -->
		<section class="basic-elements">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Đánh giá của Trưởng phòng</h4>
						</div>
						<div class="card-body">
							<div class="card-block">
								<div class="row">

									<c:url var="addAction" value="/truongphongsubmit"></c:url>

									<form:form action="${addAction}" modelAttribute="danhgia"
										class="form-group>
												<fieldset ">

										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<label for="helpInputTop">Kỷ Luật</label>
											<div class="rating" style="position: relative; top: 15px;">
												<label> <form:radiobutton path="kyLuat" value="1"
														name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="kyLuat" value="2"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="kyLuat" value="3"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="kyLuat" value="4"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="kyLuat" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

										</div>





										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<label for="helpInputTop">Tinh thần</label>
											<div class="rating" style="position: relative; top: 15px;">
												<label> <form:radiobutton path="tinhThan" value="1"
														name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="tinhThan" value="2"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="tinhThan" value="3"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="tinhThan" value="4"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="tinhThan" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

										</div>

										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<label for="helpInputTop">Khối lượng</label>
											<div class="rating" style="position: relative; top: 15px;">
												<label> <form:radiobutton path="klCongViec"
														value="1" name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="klCongViec"
														value="2" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="klCongViec"
														value="3" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="klCongViec"
														value="4" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="klCongViec" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

										</div>




										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<label for="helpInputTop">Kết quả</label>
											<div class="rating" style="position: relative; top: 15px;">
												<label> <form:radiobutton path="kqCongViec"
														value="1" name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="kqCongViec"
														value="2" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="kqCongViec"
														value="3" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="kqCongViec"
														value="4" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="kqCongViec" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

										</div>


										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<label for="helpInputTop">Kỹ năng</label>
											<div class="rating" style="position: relative; top: 15px;">
												<label> <form:radiobutton path="kyNang" value="1"
														name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="kyNang" value="2"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="kyNang" value="3"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="kyNang" value="4"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="kyNang" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

										</div>



										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<label for="helpInputTop">Tổng thể</label>
											<div class="rating" style="position: relative; top: 15px;">
												<label> <form:radiobutton path="tongThe" value="1"
														name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="tongThe" value="2"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="tongThe" value="3"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="tongThe" value="4"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="tongThe" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

										</div>

										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<label for="helpInputTop">Nhận xét chung</label>
											<form:input class="form-control" id="basicInput" type="text"
												path="nhanXetChung" />
											<br>
											<button class="button1" type="submit">
												<span>Gửi đánh giá</span>
											</button>
										</div>
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