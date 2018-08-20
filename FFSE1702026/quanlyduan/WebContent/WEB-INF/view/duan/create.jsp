<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<section class="input-validation">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">
						<spring:message code="duan.add"></spring:message>
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
					<div class="card-block ">

						<form:form cssClass="form-horizontal" modelAttribute="duan"
							method="POST" action="create">

							<div class="row">
								<div class="col-lg-12 col-md-12">

									<div class="form-group">
										<h5>
											<spring:message code="duan.name"></spring:message>
										</h5>
										<div class="controls">
											<form:input path="tenDuAn" cssClass="form-control round" />
											<form:errors path="tenDuAn" cssStyle="color: red"></form:errors>
											<div class="help-block"></div>
										</div>

									</div>

									<div class="form-group">
										<h5>
											<spring:message code="duan.description"></spring:message>
										</h5>
										<div class="controls">
											<form:textarea path="moTaDuAn" cssClass="form-control round" />
											<form:errors path="moTaDuAn" cssStyle="color: red"></form:errors>
											<div class="help-block"></div>
										</div>

									</div>
									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.customer"></spring:message>
											</h5>
											<div class="controls">
												<form:select path="khachHang" cssClass="form-control round">
													<c:forEach items="${khachhang }" var="kh">
														<option value="${kh.maKhachHang }">${kh.tenKhachHang }</option>
													</c:forEach>
												</form:select>
												<form:errors path="khachHang" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>
									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.business"></spring:message>
											</h5>
											<div class="controls">
												<form:select path="nghiepVu" cssClass="form-control round">
													<c:forEach items="${nghiepvu }" var="nv">
														<option value="${nv.maNghiepVu }">${nv.tenNghiepVu }</option>
													</c:forEach>
												</form:select>
												<form:errors path="nghiepVu" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>
									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.vendor" />
											</h5>
											<div class="controls">
												<form:select path="doiTac" cssClass="form-control round"
													mutiple="true" items="${doitac }" itemValue="maDoiTac"
													itemLabel="tenDoiTac">

												</form:select>
												<form:errors path="doiTac" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>
									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.language" />
											</h5>
											<div class="controls">
												<form:select path="ngonNgu" cssClass="form-control round"
													mutiple="true" items="${ngonngu }" itemValue="maNgonNgu"
													itemLabel="tenNgonNgu">
													<%-- <c:forEach items="${ngonngu }" var="nn">
													<option value="${nn.maNgonNgu }">${nn.tenNgonNgu }</option>
												</c:forEach> --%>
												</form:select>
												<form:errors path="ngonNgu" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>
									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.database" />
											</h5>
											<div class="controls">
												<form:select path="database" cssClass="form-control round"
													mutiple="true" items="${database }" itemValue="maDatabase"
													itemLabel="tenDatabase">
													<%-- <c:forEach items="${ngonngu }" var="nn">
													<option value="${nn.maNgonNgu }">${nn.tenNgonNgu }</option>
												</c:forEach> --%>
												</form:select>
												<form:errors path="database" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>
									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.framework" />
											</h5>
											<div class="controls">
												<form:select path="framework" cssClass="form-control round"
													mutiple="true" items="${framework }"
													itemValue="maFramework" itemLabel="tenFramework">
													<%-- <c:forEach items="${ngonngu }" var="nn">
													<option value="${nn.maNgonNgu }">${nn.tenNgonNgu }</option>
												</c:forEach> --%>
												</form:select>
												<form:errors path="framework" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>

									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.startdate" />
											</h5>
											<div class="controls">
												<form:input path="startDate" cssClass="form-control round"
													type="date" />
												<form:errors path="startDate" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>
									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.enddate" />
											</h5>
											<div class="controls">
												<form:input path="endDate" cssClass="form-control round"
													type="date" />
												<form:errors path="endDate" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>






									<div class="col-lg-6 col-md-12">
										<div class="form-group">
											<h5>
												<spring:message code="duan.status" />
											</h5>
											<div class="controls">
												<form:select path="tinhTrang" cssClass="form-control round">
													<c:forEach items="${tinhtrang }" var="tt">
														<option value="${tt.maTinhTrang }"
															<c:if test="${tt.maTinhTrang ==stt }" >selected="selected"</c:if>>${tt.tenTinhTrang }</option>
													</c:forEach>
												</form:select>
												<form:errors path="tinhTrang" cssStyle="color: red"></form:errors>
												<div class="help-block"></div>
											</div>

										</div>
									</div>
									
									<div class="text-xs-right">
										<button type="submit" class="btn btn-success">
											Submit <i class="fa fa-thumbs-o-up position-right"></i>
										</button>
										<button type="reset" class="btn btn-danger">
											Reset <i class="fa fa-refresh position-right"></i>
										</button>
									</div>
								</div>

							</div>


						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
