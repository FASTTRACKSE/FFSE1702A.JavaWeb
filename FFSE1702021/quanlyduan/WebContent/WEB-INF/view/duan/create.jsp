<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<section class="input-validation">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title"><spring:message code="khachhang.add"></spring:message></h4>
					<a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
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
						
						<form:form cssClass="form-horizontal" modelAttribute="duan" method="POST" action="create" >
						
							<div class="row">
								<div class="col-lg-6 col-md-12">
									<div class="form-group">
										<h5><spring:message code="khachhang.code"></spring:message></h5>
										<div class="controls">
											<form:input path="maDuAn" cssClass="form-control"/>
											<form:errors path="maDuAn" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5><spring:message code="khachhang.name"></spring:message></h5>
										<div class="controls">
											<form:input path="tenDuAn" cssClass="form-control"/>
											<form:errors path="tenDuAn" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5><spring:message code="khachhang.phone"></spring:message></h5>
										<div class="controls">
											<form:input path="nghiepVu" cssClass="form-control"/>
											<form:errors path="nghiepVu" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5><spring:message code="khachhang.email"></spring:message></h5>
										<div class="controls">
											<form:input path="moTaDuAn" cssClass="form-control"/>
											<form:errors path="moTaDuAn" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5><spring:message code="khachhang.address"></spring:message></h5>
										<div class="controls">
											<form:input path="tinhTrang" cssClass="form-control"/>
											<form:errors path="tinhTrang" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5><spring:message code="khachhang.address"></spring:message></h5>
										<div class="controls">
											<form:select path="khachHang" cssClass="form-control">
												<c:forEach items="${khachhang }" var="kh">
													<option value="${kh.maKhachHang }">${kh.tenKhachHang }</option>
												</c:forEach>
											</form:select>
											<form:errors path="khachHang" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5>Ngon Ngu</h5>
										<div class="controls">
											<form:select path="ngonNgu" cssClass="form-control"  mutiple="true" items="${ngonngu }" itemValue="maNgonNgu" itemLabel="tenNgonNgu">
												<%-- <c:forEach items="${ngonngu }" var="nn">
													<option value="${nn.maNgonNgu }">${nn.tenNgonNgu }</option>
												</c:forEach> --%>
											</form:select>
											<form:errors path="ngonNgu" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									
									
									<div class="text-xs-right">
										<button type="submit" class="btn btn-success">Submit <i class="fa fa-thumbs-o-up position-right"></i></button>
										<button type="reset" class="btn btn-danger">Reset <i class="fa fa-refresh position-right"></i></button>
									</div>
								</div>
								
							</div>
							
							<!-- select -->
							<!-- <div class="row">
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="basicSelect">Basic Select</label>
                                    <select class="form-control" id="basicSelect">
                                      <option>Select Option</option>
                                      <option>Option 1</option>
                                      <option>Option 2</option>
                                      <option>Option 3</option>
                                      <option>Option 4</option>
                                      <option>Option 5</option>
                                    </select>
                                </fieldset>                                
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="customSelect">Custom select</label>
                                    <select class="custom-select block" id="customSelect">
                                        <option selected="">Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </fieldset>                                
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="countrySelect">Multiple select</label>
                                    <select class="form-control" id="countrySelect" multiple="multiple">
                                        <option selected="selected">United States</option>
                                        <option>Canada</option>
                                        <option selected="selected">United Kingdom</option>
                                        <option>Japan</option>
                                        <option>Australia</option>
                                        <option>Germany</option>
                                        <option selected="selected">India</option>
                                        <option>Italy</option>
                                        <option>Sweden</option>
                                        <option>France</option>
                                        <option>New Zealand</option>
                                        <option>Switzerland</option>
                                        <option>Russia</option>
                                        <option>England</option>
                                        <option>Norway</option>
                                        <option>Greece</option>
                                        <option>Philippines</option>
                                        <option>Ireland</option>
                                        <option>China</option>
                                        <option>South Korea</option>
                                    </select>
                                </fieldset>                                
                            </div>
                        </div>
					 -->	</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
				