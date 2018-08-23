<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
<<<<<<< HEAD
               <h3 class="content-header-title mb-0"><spring:message code="label.themChucDanh" /></h3>
=======
               <h3 class="content-header-title mb-0">
               		<c:if test="${!empty chucdanh.maChucDanh }">
                      SỬA CHỨC DANH
                     </c:if>
                     <c:if test="${empty chucdanh.maChucDanh }">
                      THÊM CHỨC DANH
                     </c:if>
			   </h3>
>>>>>>> 87b874081daaa7fc735a7cc5e14c5578a2f46d2a
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value='/'></c:url>"><spring:message code="label.trangChu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="<c:url value='/ns/ho_so'></c:url>"><spring:message code="label.quanLyNhanSu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="<c:url value='/ns/chuc_danh'></c:url>"><spring:message code="label.quanLyChucDanh" /></a>
                        </li>
<<<<<<< HEAD
                        <li class="breadcrumb-item active"><spring:message code="label.themChucDanh" />
=======
                        <li class="breadcrumb-item active">
						<c:if test="${!empty chucdanh.maChucDanh }">
                      		SỬA CHỨC DANH
                     	</c:if>
                     	<c:if test="${empty chucdanh.maChucDanh }">
                      		THÊM CHỨC DANH
                     	</c:if>
>>>>>>> 87b874081daaa7fc735a7cc5e14c5578a2f46d2a
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
         </div>
         <div class="content-body">
            <!-- Zero configuration table -->
            <section id="configuration">
               <div class="row">
                  <div class="col-xs-12">
                     <div class="card">
		                <div class="card-header">
		                <c:if test="${empty chucdanh.maChucDanh}">
		                  <center><h4 class="card-title" id="basic-layout-form-center"><i class="ft-user"></i><spring:message code="label.themChucDanh" /></h4></center>
		                </c:if>
		                <c:if test="${!empty chucdanh.maChucDanh}">
		                  <center><h4 class="card-title" id="basic-layout-form-center"><i class="ft-user"></i><spring:message code="label.suaChucDanh" /></h4></center>
		                </c:if>
		                  <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
		                  <div class="heading-elements">
		                    <ul class="list-inline mb-0">
		                      <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
		                      <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
		                    </ul>
		                  </div>
		                </div>
		                <div class="card-body collapse in">
		                  <div class="card-block">
		                    <div class="card-text">
		                    </div>
		                    <c:url var="addAction" value="/ns/chuc_danh/save" ></c:url>
		                    <form:form action="${addAction }" modelAttribute="chucdanh">
		                      <div class="row">
		                        <div class="col-md-6 offset-md-3">
		                          <div class="form-body" style="margin-top: 1rem;">
		                            <div class="form-group">
<<<<<<< HEAD
		                              <label><spring:message code="label.maChucDanh" /></label>
		                              <form:input disabled = "${!empty chucdanh.maChucDanh ? 'true' : 'false' }" path="maChucDanh" class="form-control" placeholder="..."/>
=======
		                              <label>Mã chức danh</label>
		                              <c:if test="${!empty chucdanh.maChucDanh }">
		                              	<form:input path="maChucDanh" class="form-control" readonly="true" placeholder="Mã chức danh..."/>
		                              </c:if>
		                              <c:if test="${empty chucdanh.maChucDanh }">
		                              	<form:input path="maChucDanh" class="form-control"  placeholder="Mã chức danh..."/>
		                              	<form:errors path="maChucDanh" cssClass="invalid-feedback d-block" />
		                              </c:if>
>>>>>>> 87b874081daaa7fc735a7cc5e14c5578a2f46d2a
		                            </div>
		                            <div class="form-group">
		                              <label><spring:message code="label.tenChucDanh" /></label>
		                              <form:input path="tenChucDanh" class="form-control" placeholder="..."/>
		                            </div>
		                          </div>
		                        </div>
		                      </div>
		                      <div class="form-actions center">
		                        <a href="/ffse-fbms/ns/chuc_danh"><button type="button" class="btn btn-warning mr-1"><i class="ft-x"></i> <spring:message code="label.quaylai" /></button></a>
		                        <c:if test="${empty chucdanh.maChucDanh}">
						 		<button type="submit" class="btn btn-primary"><i class="fa fa-check-square-o"></i> <spring:message code="label.them" /></button>
						 		</c:if>
						 		<c:if test="${!empty chucdanh.maChucDanh}">
						 		<button type="submit" class="btn btn-primary"><i class="fa fa-check-square-o"></i> <spring:message code="label.chinhSua" /></button>
						 		</c:if>
		                      </div>
		                    </form:form>
		                  </div>
		                </div>
		              </div>
                  </div>
               </div>
            </section>
         </div>
      </div>
   </div>


<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 