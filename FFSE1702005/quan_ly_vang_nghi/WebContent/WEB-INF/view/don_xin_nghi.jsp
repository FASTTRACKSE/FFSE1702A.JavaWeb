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

			<!-- Inputs Icons start -->

			<div class="row match-height">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title" id="from-actions-top-left">
								<spring:message code="title" />
							</h4>
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
							<div class="card-block">
								<c:if
									test="${donxinnghi.trang_thai == 'Nháp'||empty donxinnghi.ma_don}">
									<div class="card-text">
										<div
											class="alert bg-info alert-icon-right alert-arrow-right alert-dismissible fade in"
											role="alert">
											<button type="button" class="close" data-dismiss="alert"
												aria-label="Close">
												<span aria-hidden="true">×</span>
											</button>

											<strong><spring:message code="luu_y" /></strong>
										</div>
									</div>
								</c:if>
								<c:url var="addAction" value="/donxinnghi/choduyet"></c:url>

								<form:form class="form" action="${addAction}"
									modelAttribute="donxinnghi">
									<div class="form-body">
										<c:if test="${not empty donxinnghi.ma_don}">
											<h4 class="form-section">
												<i class="fa fa-wpforms"></i>
												<spring:message code="madon" />
											</h4>
											<div class="row">
												<div class="form-group col-md-12 mb-2">
													<fieldset
														class="form-group position-relative has-icon-left">
														<form:input class="form-control round" id="iconLeft10"
															path="ma_don" readonly="true" />
														<form:hidden path="ma_don" />
														<div class="form-control-position">
															<i class="fa fa-wpforms"></i>
														</div>
													</fieldset>
												</div>
											</div>
											<h4 class="form-section">
												<i class="fa fa-newspaper-o"></i>
												<spring:message code="trang_thai" />
											</h4>
											<div class="row">
												<div class="form-group col-md-12 mb-2">
													<fieldset
														class="form-group position-relative has-icon-left">
														<form:input class="form-control round" id="iconLeft10"
															path="trang_thai" readonly="true" disabled="true" />
														<form:hidden path="trang_thai" />
														<div class="form-control-position">
															<i class="fa fa-newspaper-o"></i>
														</div>
													</fieldset>
												</div>
											</div>
										</c:if>
										<h4 class="form-section">
											<i class="fa fa-address-card-o"></i>
											<spring:message code="manv" />
										</h4>
										<div class="row">
											<div class="form-group col-md-12 mb-2">
												<fieldset class="form-group position-relative has-icon-left">
													<form:input type="text" class="form-control round"
														id="iconLeft10" path="ngaynghientity.ma_nhan_vien" />
													<div class="form-control-position">
														<i class="fa fa-user-circle-o"></i>
													</div>
												</fieldset>
											</div>
										</div>
										<h4 class="form-section">
											<i class="fa fa-address-card-o"></i>
											<spring:message code="tennv" />
										</h4>
										<div class="row">
											<div class="form-group col-md-12 mb-2">
												<fieldset class="form-group position-relative has-icon-left">
													<form:input type="text" class="form-control round"
														id="iconLeft10" path="ten_nhan_vien" />													
													<div class="form-control-position">
														<i class="fa fa-user-circle-o"></i>
													</div>
												</fieldset>
											</div>
										</div>
										<h4 class="form-section">
											<i class="fa fa-building-o"></i>
											<spring:message code="phong_ban" />
										</h4>
										<div class="row">
											<div class="form-group col-md-12 mb-2">
												<fieldset class="form-group position-relative has-icon-left">
													<form:input type="text" class="form-control round"
														id="iconLeft10" path="phong_ban" />
													<div class="form-control-position">
														<i class="fa fa-users"></i>
													</div>
												</fieldset>
											</div>
										</div>
										<h4 class="form-section">
											<i class="ft-clock"></i>
											<spring:message code="da_nghi" />
										</h4>
										<div class="row">
											<div class="form-group col-md-12 mb-2">
												<fieldset class="form-group position-relative has-icon-left">
													<form:input type="text" class="form-control round"
														id="iconLeft10" path="ngaynghientity.so_ngay_da_nghi"
														readonly="true" />
													<div class="form-control-position">
														<i class="fa fa-clock-o"></i>
													</div>
												</fieldset>
											</div>
										</div>
										<h4 class="form-section">
											<i class="ft-clock"></i>
											<spring:message code="con_lai" />
										</h4>
										<div class="row">
											<div class="form-group col-md-12 mb-2">
												<fieldset class="form-group position-relative has-icon-left">
													<form:input type="text" class="form-control round"
														id="iconLeft10" path="ngaynghientity.so_ngay_con_lai"
														readonly="true" />
													<div class="form-control-position">
														<i class="fa fa-clock-o"></i>
													</div>
												</fieldset>
											</div>
										</div>
										<h4 class="form-section">
											<i class="fa fa-calendar-o"></i>
											<spring:message code="chonngay" />
										</h4>
										<div class="row">
											<div class="form-group col-md-4 mb-2 has-icon-left">
												<p>
													<spring:message code="batdau" />
												</p>
												<c:if
													test="${donxinnghi.trang_thai == 'Nháp'||donxinnghi.trang_thai == 'Từ chối'||empty donxinnghi.ma_don}">
													<fieldset class="form-group position-relative">
														<form:input type="date" class="form-control round"
															id="from" onchange="myFunction()" path="ngay_nghi" />

														<div class="form-control-position">
															<i class="fa fa-calendar-o"></i>
														</div>
													</fieldset>
												</c:if>
												<c:if
													test="${donxinnghi.trang_thai == 'Chờ Phê Duyệt'||donxinnghi.trang_thai == 'Duyệt'}">
													<fieldset class="form-group position-relative">
														<form:input type="date" class="form-control round"
															id="from" onchange="myFunction()" path="ngay_nghi"
															readonly="true" />
														<div class="form-control-position">
															<i class="fa fa-calendar-o"></i>
														</div>
													</fieldset>
												</c:if>
												<script>
													var today = new Date();
													var dd = today.getDate();
													var mm = today.getMonth() + 1; // January is 0!
													var yyyy = today
															.getFullYear();

													if (dd < 10) {
														dd = '0' + dd
													}

													if (mm < 10) {
														mm = '0' + mm
													}

													today = yyyy + '-' + mm
															+ '-' + dd;
													document.getElementById(
															"from")
															.setAttribute(
																	"min",
																	today);
													document
															.getElementById('from').value = today;
													function myFunction() {
														var today = new Date(
																document
																		.getElementById("from").value);
														var dd = today
																.getDate();
														var mm = today
																.getMonth() + 1; // January is 0!
														var yyyy = today
																.getFullYear();

														if (dd < 10) {
															dd = '0' + dd
														}

														if (mm < 10) {
															mm = '0' + mm
														}

														today = yyyy + '-' + mm
																+ '-' + dd;
														document
																.getElementById(
																		"to")
																.setAttribute(
																		"min",
																		today);
														document
																.getElementById('to').value = new Date(
																document
																		.getElementById("from").value)
																.toISOString()
																.substring(0,
																		10);

														var iWeeks, iDateDiff, iAdjust = 0;
														var dDate1 = new Date(
																document
																		.getElementById("from").value);
														var dDate2 = new Date(
																document
																		.getElementById("to").value);

														if (dDate2 < dDate1)
															return -1; // error code if dates transposed

														var iWeekday1 = dDate1
																.getDay(); // day of week
														var iWeekday2 = dDate2
																.getDay();

														iWeekday1 = (iWeekday1 == 0) ? 7
																: iWeekday1; // change Sunday from 0 to 7
														iWeekday2 = (iWeekday2 == 0) ? 7
																: iWeekday2;

														if ((iWeekday1 > 5)
																&& (iWeekday2 > 5))
															iAdjust = 1; // adjustment if both days on weekend

														iWeekday1 = (iWeekday1 > 5) ? 5
																: iWeekday1; // only count weekdays
														iWeekday2 = (iWeekday2 > 5) ? 5
																: iWeekday2;

														// calculate differnece in weeks (1000mS * 60sec * 60min * 24hrs * 7 days = 604800000)
														iWeeks = Math
																.floor((dDate2
																		.getTime() - dDate1
																		.getTime()) / 604800000)

														if (iWeekday1 <= iWeekday2) {
															iDateDiff = (iWeeks * 5)
																	+ (iWeekday2 - iWeekday1)
																	+ 1
														} else {
															iDateDiff = ((iWeeks + 1) * 5)
																	- (iWeekday1 - iWeekday2)
																	+ 1
														}

														iDateDiff -= iAdjust
														document
																.getElementById("total").value = iDateDiff;
													}
												</script>
											</div>
											<div class="form-group col-md-4 mb-2 has-icon-left">
												<p>
													<spring:message code="ketthuc" />
												</p>
												<c:if
													test="${donxinnghi.trang_thai == 'Nháp'||donxinnghi.trang_thai == 'Từ chối'||empty donxinnghi.ma_don}">
													<fieldset class="form-group position-relative">
														<form:input type="date" class="form-control round" id="to"
															onchange="count()" path="ngay_ket_thuc" />
														<div class="form-control-position">
															<i class="fa fa-calendar-o"></i>
														</div>
													</fieldset>
												</c:if>
												<c:if
													test="${donxinnghi.trang_thai == 'Chờ Phê Duyệt'||donxinnghi.trang_thai == 'Duyệt'}">
													<fieldset class="form-group position-relative">
														<form:input type="date" class="form-control round" id="to"
															onchange="count()" path="ngay_ket_thuc" readonly="true" />
														<div class="form-control-position">
															<i class="fa fa-calendar-o"></i>
														</div>
													</fieldset>
												</c:if>
												<script>
													var today = new Date();
													var dd = today.getDate();
													var mm = today.getMonth() + 1; // January is 0!
													var yyyy = today
															.getFullYear();

													if (dd < 10) {
														dd = '0' + dd
													}

													if (mm < 10) {
														mm = '0' + mm
													}

													today = yyyy + '-' + mm
															+ '-' + dd;
													document.getElementById(
															"to").setAttribute(
															"min", today);
													function count() {
														var iWeeks, iDateDiff, iAdjust = 0;
														var dDate1 = new Date(
																document
																		.getElementById("from").value);
														var dDate2 = new Date(
																document
																		.getElementById("to").value);

														if (dDate2 < dDate1)
															return -1; // error code if dates transposed

														var iWeekday1 = dDate1
																.getDay(); // day of week
														var iWeekday2 = dDate2
																.getDay();

														iWeekday1 = (iWeekday1 == 0) ? 7
																: iWeekday1; // change Sunday from 0 to 7
														iWeekday2 = (iWeekday2 == 0) ? 7
																: iWeekday2;

														if ((iWeekday1 > 5)
																&& (iWeekday2 > 5))
															iAdjust = 1; // adjustment if both days on weekend

														iWeekday1 = (iWeekday1 > 5) ? 5
																: iWeekday1; // only count weekdays
														iWeekday2 = (iWeekday2 > 5) ? 5
																: iWeekday2;

														// calculate differnece in weeks (1000mS * 60sec * 60min * 24hrs * 7 days = 604800000)
														iWeeks = Math
																.floor((dDate2
																		.getTime() - dDate1
																		.getTime()) / 604800000)

														if (iWeekday1 <= iWeekday2) {
															iDateDiff = (iWeeks * 5)
																	+ (iWeekday2 - iWeekday1)
																	+ 1
														} else {
															iDateDiff = ((iWeeks + 1) * 5)
																	- (iWeekday1 - iWeekday2)
																	+ 1
														}

														iDateDiff -= iAdjust
														document
																.getElementById("total").value = iDateDiff;
													}
												</script>
											</div>
											<div class="form-group col-md-4 mb-2 has-icon-left">
												<p>
													<spring:message code="tongngay" />
												</p>
												<fieldset class="form-group position-relative">
													<form:input type="text" class="form-control round"
														id="total" path="so_ngay_nghi" readonly="true" />
													<form:errors path="so_ngay_nghi" style="color: red;" />
													<div class="form-control-position">
														<i class="ft-clock"></i>
													</div>
												</fieldset>
											</div>
										</div>

										<h4 class="form-section">
											<i class="fa fa-list-ul"></i>
											<spring:message code="lydo" />
										</h4>
										<c:if
											test="${donxinnghi.trang_thai == 'Nháp'||donxinnghi.trang_thai == 'Từ chối'||empty donxinnghi.ma_don}">
											<div class="row">
												<div class="form-group col-md-12 mb-2">
													<form:select path="ly_do" class="custom-select block round"
														id="customSelect">
														<c:forEach items="${lydo}" var="ld">
															<form:option value="${ld.id}" label="${ld.ly_do}" />
														</c:forEach>
													</form:select>
												</div>
											</div>
										</c:if>
										<c:if
											test="${donxinnghi.trang_thai == 'Chờ Phê Duyệt'||donxinnghi.trang_thai == 'Duyệt'}">
											<div class="row">
												<div class="form-group col-md-12 mb-2">
													<form:select path="ly_do" class="custom-select block round"
														id="customSelect" disabled="true">
														<c:forEach items="${lydo}" var="ld">
															<form:option value="${ld.id}" label="${ld.ly_do}" />
														</c:forEach>
													</form:select>
												</div>
											</div>
										</c:if>
										<h4 class="form-section">
											<i class="fa fa-tags"></i>
											<spring:message code="ghichu" />
										</h4>
										<c:if
											test="${donxinnghi.trang_thai == 'Nháp'||donxinnghi.trang_thai == 'Từ chối'||empty donxinnghi.ma_don}">
											<div class="row">
												<div class="form-group col-xs-12 mb-2 has-icon-left">
													<form:textarea rows="9" class="form-control round"
														name="notes" placeholder="Ghi chú ... (Tối đa 255 kí tự)"
														path="ghi_chu" />
													<form:errors path="ghi_chu" style="color: red;" />
													<div class="form-control-position">
														<i class="fa fa-keyboard-o"></i>
													</div>
												</div>
											</div>
										</c:if>
										<c:if
											test="${donxinnghi.trang_thai == 'Chờ Phê Duyệt'||donxinnghi.trang_thai == 'Duyệt'}">
											<div class="row">
												<div class="form-group col-xs-12 mb-2 has-icon-left">
													<form:textarea rows="9" class="form-control round"
														name="notes" placeholder="Ghi chú ... (Tối đa 255 kí tự)"
														path="ghi_chu" readonly="true" />
													<form:errors path="ghi_chu" style="color: red;" />
													<div class="form-control-position">
														<i class="fa fa-keyboard-o"></i>
													</div>
												</div>
											</div>
										</c:if>
										<c:if test="${donxinnghi.trang_thai == 'Chờ Phê Duyệt'}">
											<h4 class="form-section">
												<i class="fa fa-tags"></i>
												<spring:message code="ghichutp" />
											</h4>
											<div class="row">
												<div class="form-group col-xs-12 mb-2 has-icon-left">
													<form:textarea rows="9" class="form-control round"
														name="notes" placeholder="Ghi chú ... (Tối đa 255 kí tự)"
														path="ghi_chu_truong_phong" />
													<form:errors path="ghi_chu_truong_phong" style="color: red;" />
													<div class="form-control-position">
														<i class="fa fa-keyboard-o"></i>
													</div>
												</div>
											</div>
										</c:if>
										<c:if test="${donxinnghi.trang_thai == 'Từ chối'}">
											<h4 class="form-section">
												<i class="fa fa-tags"></i>
												<spring:message code="ghichutp" />
											</h4>
											<div class="row">
												<div class="form-group col-xs-12 mb-2 has-icon-left">
													<form:textarea rows="9" class="form-control round"
														name="notes" placeholder="Ghi chú ... (Tối đa 255 kí tự)"
														path="ghi_chu_truong_phong" readonly="true" />
													<form:errors path="ghi_chu_truong_phong" style="color: red;" />
													<div class="form-control-position">
														<i class="fa fa-keyboard-o"></i>
													</div>
												</div>
											</div>
										</c:if>
										<div class="form-actions">
											<c:if test="${donxinnghi.trang_thai == 'Duyệt'}">
												<a href="<%=request.getContextPath()%>/danhsachduyet">
													<button type="button" class="btn btn-warning mr-1">
														<i class="fa fa-arrow-circle-left"></i>
														<spring:message code="button_quaylai" />
													</button>
												</a>
											</c:if>
											<c:if test="${donxinnghi.trang_thai == 'Chờ Phê Duyệt'}">
												<button type="submit" class="btn btn-success"
													formaction="<%=request.getContextPath()%>/donxinnghi/duyet">
													<i class="fa fa-check-square-o"></i>
													<spring:message code="button_duyet" />
												</button>
												<button type="submit" class="btn btn-danger"
													formaction="<%=request.getContextPath()%>/donxinnghi/tuchoi">
													<i class="ft-x"></i>
													<spring:message code="button_tuchoi" />
												</button>
												<a href="<%=request.getContextPath()%>/danhsachcho">
													<button type="button" class="btn btn-warning mr-1">
														<i class="fa fa-arrow-circle-left"></i>
														<spring:message code="button_quaylai" />
													</button>
												</a>
											</c:if>
											<c:if
												test="${donxinnghi.trang_thai == 'Nháp'||empty donxinnghi.ma_don||donxinnghi.trang_thai == 'Từ chối'}">
												<button type="submit" class="btn btn-primary"
													formaction="<%=request.getContextPath()%>/donxinnghi/nhap">
													<i class="fa ft-save"></i>
													<spring:message code="button_nhap" />
												</button>
												<button type="submit" class="btn btn-success">
													<i class="fa fa-check-square-o"></i>
													<spring:message code="button_guidon" />
												</button>
												<a href="<%=request.getContextPath()%>/danhsachnhap">
													<button type="button" class="btn btn-warning mr-1">
														<i class="fa fa-arrow-circle-left"></i>
														<spring:message code="button_quaylai" />
													</button>
												</a>
												<c:if test="${not empty donxinnghi.ma_don}">
													<a
														href="<%=request.getContextPath()%>/danhsachnhap/xoadon/${donxinnghi.ma_don}">
														<button type="button" class="btn btn-danger">
															<i class="ft-x"></i>
															<spring:message code="button_xoa" />
														</button>
													</a>
												</c:if>
											</c:if>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
				<!-- Inputs Icons end -->
			</div>
		</div>
	</div>
</div>

<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />