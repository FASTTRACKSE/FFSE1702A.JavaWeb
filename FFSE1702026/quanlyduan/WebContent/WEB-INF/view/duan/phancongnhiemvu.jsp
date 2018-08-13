<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:url var="phancongnhiemvu" value="/duan/phancongnhiemvu/create" />
<section class="input-validation">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title"><spring:message code="duan.add"></spring:message></h4>
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
						
						<form:form cssClass="form-horizontal" modelAttribute="nhiemvu" method="POST" action="${phancongnhiemvu }" >
						
							<div class="row">
								<div class="col-lg-6 col-md-12">
									 <div class="form-group">
										<h5><spring:message code="duan.code" /></h5>
										<div class="controls">
											<form:select path="maDuAn" cssClass="form-control"  >
												 
													<option value="${duan.maDuAn }">${duan.tenDuAn} </option>
												
											</form:select>
											<form:errors path="maDuAn" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div> 
									
									<div class="form-group">
										<h5><spring:message code="duan.employee" /></h5>
										<div class="controls">
											<form:select path="maNhanVien" cssClass="form-control"   >
												 <c:forEach items="${nhanvien }" var="nv">
													<option value="${nv.maNhanVien }">${nv.hoDem } ${nv.ten } </option>
												</c:forEach> 
											</form:select>
											<form:errors path="maNhanVien" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									
									<div class="form-group">
										<h5><spring:message code="duan.vaitro" /></h5>
										<div class="controls">
											<form:select path="maVaiTro" cssClass="form-control"  items="${vaitro }" itemValue="maVaiTro" itemLabel="tenVaiTro">
												
											</form:select>
											<form:errors path="maVaiTro" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div> 
									
									
									
									
									<div class="text-xs-right">
										<button type="submit" class="btn btn-success">Submit <i class="fa fa-thumbs-o-up position-right"></i></button>
										<button type="reset" class="btn btn-danger">Reset <i class="fa fa-refresh position-right"></i></button>
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
				