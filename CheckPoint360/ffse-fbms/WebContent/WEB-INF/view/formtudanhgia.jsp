<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Form Basic Elements</h3>
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
								<h4 class="card-title">Basic Elements</h4>
							</div>
							<div class="card-body">
								<div class="card-block">
									<div class="row">
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">with help</label>
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
												<label for="helpInputTop">Input text with help</label>
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
												<label for="disabledInput">Disabled Input</label>
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
												<input type="text" class="form-control" id="disabledInput"
													>
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">with help</label>
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
												<label for="helpInputTop">Input text with help</label>
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
												<label for="disabledInput">Disabled Input</label>
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
												<input type="text" class="form-control" id="disabledInput"
													>
											</fieldset>
										</div>
										<div class="col-xl-4 col-lg-6 col-md-12 mb-1">
											<fieldset class="form-group">
												<label for="helpInputTop">with help</label>
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
			</section>
			<!-- ////////////////////////////////////////////////////////////////////////////-->

			<jsp:include page="/WEB-INF/view/templates/footer.jsp" />