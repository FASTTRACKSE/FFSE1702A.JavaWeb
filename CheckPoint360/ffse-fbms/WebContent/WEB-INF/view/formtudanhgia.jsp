<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Tự đánh giá</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Form</a></li>
							<li class="breadcrumb-item active">Tự đánh giá</li>
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
									<c:url var="addAction" value="/tudanhgia"></c:url>
									<form:form action="${addAction}" modelAttribute="danhgia"
											class="form-group>
												<fieldset ">

											<h1>1.3</h1>

											<div class="rating">
												<label> <form:radiobutton path="dgKyLuat" value="1"
														name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKyLuat" value="2"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKyLuat" value="3"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="dgKyLuat" value="4"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="dgKyLuat" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

											<br>






											<h2>Tinh thần</h2>
											<div class="rating">
												<label> <form:radiobutton path="dgTinhThan" value="1"
														name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="dgTinhThan" value="2"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="dgTinhThan" value="3"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="dgTinhThan" value="4"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="dgTinhThan" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

											<br>


											<h2>Khối lượng</h2>
											<div class="rating">
												<label> <form:radiobutton path="dgKlCongViec"
														value="1" name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKlCongViec"
														value="2" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKlCongViec"
														value="3" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="dgKlCongViec"
														value="4" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="dgKlCongViec" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

											<br>





											<h2>kết quả</h2>
											<div class="rating">
												<label> <form:radiobutton path="dgKetQua"
														value="1" name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKetQua"
														value="2" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKetQua"
														value="3" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="dgKetQua"
														value="4" name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="dgKetQua" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

											<br>



											<h2>kỹ năng</h2>
											<div class="rating">
												<label> <form:radiobutton path="dgKyNang" value="1"
														name="stars" /> <span class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKyNang" value="2"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span>
												</label> <label> <form:radiobutton path="dgKyNang" value="3"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span>
												</label> <label><form:radiobutton path="dgKyNang" value="4"
														name="stars" /> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> </label> <label> <form:radiobutton
														path="dgKyNang" value="5" name="stars" /> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span> <span class="icon">★</span> <span
													class="icon">★</span>
												</label>
											</div>

											<br>




											<h2>Tổng thể</h2>
											<div class="rating">
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

											<br>










											<button class="button1" type="submit">
												<span>Gửi đánh giá</span>
											</button>
										</form:form>
										</div>
										
										</div>
										
										</div></div>
										</div>
										
									</div>
									</section>  
								</div>
								
								
							</div>
						
		
			<!-- ////////////////////////////////////////////////////////////////////////////-->
			
			<jsp:include page="/WEB-INF/view/templates/footer.jsp" />