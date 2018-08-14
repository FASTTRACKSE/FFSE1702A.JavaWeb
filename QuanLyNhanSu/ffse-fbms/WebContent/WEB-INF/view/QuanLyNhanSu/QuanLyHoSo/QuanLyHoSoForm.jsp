<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 
<c:if test="${empty add}">
	<spring:message var="titleHeader" code="label.suaHoSo" />
</c:if>
<c:if test="${!empty add}">
	<spring:message var="titleHeader" code="label.themHoSo" />
</c:if>
   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0"><c:out value="${titleHeader}"/></h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.trangChu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.quanLyNhanSu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="<c:url value = "/ns/ho_so"/>"><spring:message code="label.quanLyHoSo" /></a>
                        </li>
                        <li class="breadcrumb-item active"><c:out value="${titleHeader}"/>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <c:if test="${empty add}">
            <style> i.fa { width: 20px; } </style>
            <div class="content-header-right col-md-3 col-xs-12">
	            <div role="group" aria-label="Button group with nested dropdown" class="dropdown nav-item float-md-right">
	               <div role="group" class="btn-group">
	                  <button id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-outline-primary dropdown-toggle">
	                  	<i class="ft-settings icon-left"></i> <spring:message code="label.thongTinKhac" />
	                  </button>
	                  <div aria-labelledby="btnGroupDrop1" class="dropdown-menu dropdown-menu-right">
	                  	<a href="<c:url value = "/ns/ho_so/edit/${hoSoNhanVien.maNhanVien}"/>" class="dropdown-item"><i class="fa fa-id-card-o"></i> <spring:message code="label.thongTinHoSo" /></a>
	                  	<a href="<c:url value = "/ns/ho_so/bang_cap/edit/${hoSoNhanVien.maNhanVien}"/>" class="dropdown-item"><i class="fa fa-graduation-cap"></i> <spring:message code="label.thongTinBangCap" /></a>
	                  	<a href="<c:url value = "/ns/ho_so/gia_dinh/edit/${hoSoNhanVien.maNhanVien}"/>" class="dropdown-item"><i class="fa fa-users"></i> <spring:message code="label.thongTinGiaDinh" /></a>
	                  	<a href="<c:url value = "/ns/ho_so/kinh_nghiem/edit/${hoSoNhanVien.maNhanVien}"/>" class="dropdown-item"><i class="fa fa-file-code-o"></i> <spring:message code="label.thongTinKinhNghiem" /></a>
	                  	<a href="<c:url value = "/ns/hop_dong/edit/${hoSoNhanVien.maNhanVien}"/>" class="dropdown-item"><i class="fa fa-handshake-o"></i> <spring:message code="label.thongTinHopDong" /></a>
	                  	<div class="dropdown-divider"></div>
	                  	<a href="#" class="dropdown-item text-xs-center"><spring:message code="label.xemTatCa" /></a>
	                  </div>
	               </div>
				</div>
            </div>
            </c:if>
         </div>
         <div class="content-body">
             <!-- Basic form layout section start -->
	         <section id="horizontal-form-layouts">
	            <div class="row">
	               <div class="col-md-12">
	                  <div class="card">
	                     <div class="card-header">
	                        <h4 class="card-title" id="horz-layout-basic"><spring:message code="label.thongTinHoSo" /></h4>
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
	                        <div class="card-block">
								<form:form class="form form-horizontal" method="POST" action="/ffse-fbms/ns/ho_so/save" modelAttribute="hoSoNhanVien" enctype="multipart/form-data">
								   <div class="form-body">
								      <div class="row">
								         <div class="col-md-8">
								         	<div class="row">
								         		<div class="col-md-6">
									         		<div class="form-group">
										               <label><spring:message code="label.maNhanVien" /></label>
										               <fmt:formatNumber type="number" var="maNhanVienFormat" minIntegerDigits="5" groupingUsed="false" value="${hoSoNhanVien.maNhanVien}" />
										               <form:input class="form-control" path="maNhanVien" value="${maNhanVienFormat}" readonly="true" disabled="true" />
										               <c:if test="${empty add}">
										               		<form:hidden path="maNhanVien" />
										               </c:if>
										            </div>
								         		</div>
								         		<div class="col-md-6">
										            <div class="form-group">
										               <label><spring:message code="label.trangThai" /></label>
										               <form:select multiple="single" path="trangThai" class="form-control">
												   		  <form:option selected = "true" disabled = "true" value="0" label="Chọn trạng thái" />
												   		  <form:option value="1" label="Đang làm việc" />
												   		  <form:option value="2" label="Nghỉ việc" />
													   </form:select>
										            </div>
								         		</div>
								         	</div>
								         	<div class="row">
									         	<div class="col-md-6">
										            <div class="form-group">
										               <label><spring:message code="label.phongBan" /></label>
										               <form:select multiple="single" path="phongBan.maPhongBan" class="form-control">
												   		  <form:option selected = "true" disabled = "true" value="Chọn phòng ban" />
													   	  <form:options items="${phongBan}" itemValue="maPhongBan" itemLabel="tenPhongBan" />
													   </form:select>
													</div>
										         </div>
										         <div class="col-md-6">
										            <div class="form-group">
										               <label><spring:message code="label.chucDanh" /></label>
										               <form:select multiple="single" path="chucDanh.maChucDanh" class="form-control">
												   		  <form:option selected = "true" disabled = "true" value="Chọn chức danh" />
													   	  <form:options items="${chucDanh}" itemValue="maChucDanh" itemLabel="tenChucDanh" />
													   </form:select>
										            </div>
										         </div>
								         	</div>
								         </div>
								      	 <div class="col-md-4" style="text-align: center !important;">
											<c:if test="${empty add}">
									        	<img width="175px" height="175px" src="/ffse-fbms/resources/images/nhan-vien/${hoSoNhanVien.anhDaiDien}">
											</c:if>
								         </div>
								      </div>
								      <h4 class="form-section"><i class="ft-user"></i> <spring:message code="label.thongTinCoBan" /></h4>
								      <div class="row">
								         <div class="col-md-6">
								            <div class="form-group">
								               <label><spring:message code="label.hoDem" /></label>
								               <form:input class="form-control" path="hoDem" placeholder=""/>
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label><spring:message code="label.ten" /></label>
								               <form:input class="form-control" path="ten" placeholder=""/>
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label><spring:message code="label.gioiTinh" /></label>
								               <form:select multiple="single" path="gioiTinh" class="form-control">
										   		  <form:option selected = "true" disabled = "true" value="0" label="Chọn giới tính" />
										   		  <form:option value="1" label="Nam" />
										   		  <form:option value="2" label="Nữ" />
											   </form:select>
								            </div>
								         </div>
								      </div>
								      <div class="row">
								         <div class="col-md-3">
								            <div class="form-group">
								               <label><spring:message code="label.ngaySinh" /></label>
								               <form:input type="date" class="form-control" path="namSinh" placeholder="" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened" />
								            </div>
								         </div>
								         <div class="col-md-3">
								            <div class="form-group">
								               <label><spring:message code="label.tinhTrangHonNhan" /></label>
								               <form:select multiple="single" path="tinhTrangHonNhan.maTinhTrangHonNhan" class="form-control">
										   		  <form:option selected="true" disabled="true" value="-1" label="Chọn tình trạng" />
											   	  <form:options items="${tinhTrangHonNhan}" itemValue="maTinhTrangHonNhan" itemLabel="tinhTrangHonNhan" />
											   </form:select>
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label><spring:message code="label.quocTich" /></label>
								               <form:select multiple="single" path="quocTich.maQuocTich" class="form-control">
										   		  <form:option selected = "true" disabled = "true" value="Chọn quốc tịch" />
											   	  <form:options items="${quocTich}" itemValue="maQuocTich" itemLabel="tenQuocTich" />
											   </form:select>
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label><spring:message code="label.danToc" /></label>
								               <form:input class="form-control" path="danToc" placeholder=""/>
								            </div>
								         </div>
								      </div>
								      <div class="row">
								         <div class="col-md-4">
								            <div class="form-group">
								               <label><spring:message code="label.soCMND" /></label>
								               <form:input class="form-control" path="soCmnd" placeholder=""/>
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label for="noiCap"><spring:message code="label.noiCap" /></label>
								               <form:input class="form-control" path="noiCap" placeholder=""/>
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label><spring:message code="label.ngayCap" /></label>
								               <form:input type="date" class="form-control" path="ngayCap" placeholder="Ngày cấp" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened" />
								            </div>
								         </div>
								      </div>
								      <div class="form-group">
									      <label for="file"><spring:message code="label.anhDaiDien" /></label>
									      <label class="file block">
										  	<input type="file" id="image" name="image">
										  	<form:hidden path="anhDaiDien" />
										  </label>
								      </div>
								      <h4 class="form-section"><i class="fa fa-home"></i> <spring:message code="label.thongTinLienHe" /></h4>
								      <div class="form-group">
								         <label for="queQuan"><spring:message code="label.queQuan" /></label>
								         <form:input class="form-control" path="queQuan" placeholder=""/>
								      </div>
								      <div class="form-group">
								         <label for="noiTamTru"><spring:message code="label.noiOHienNay" /></label>
								         <form:input class="form-control" path="noiTamTru" placeholder=""/>
								      </div>
								      <div class="row">
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="email">Email</label>
								         	   <form:input class="form-control" path="email" placeholder=""/>
								            </div>
								         </div>
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="dienThoai"><spring:message code="label.dienThoai" /></label>
								         	   <form:input class="form-control" path="soDienThoai" placeholder=""/>
								            </div>
								         </div>
								      </div>
								   </div>
								   <div class="form-actions center">
								      <button type="button" class="btn btn-warning mr-1">
								         <i class="ft-x"></i> <spring:message code="label.huy" />
								      </button>
								      <button type="submit" class="btn btn-primary">
								         <i class="fa fa-check-square-o"></i> <spring:message code="label.luu" />
								      </button>
								   </div>
								</form:form>
	                        </div>
	                     </div>
	                  </div>
	               </div>
	            </div>
	         </section>
	         <!-- // Basic form layout section end -->
         </div>
      </div>
   </div>
   <!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 