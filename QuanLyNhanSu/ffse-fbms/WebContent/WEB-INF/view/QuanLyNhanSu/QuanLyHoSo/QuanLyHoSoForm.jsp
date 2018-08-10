<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 
<c:if test="${hoSoNhanVien.maNhanVien != 0}">
	<c:set var="titleHeader" value="Sửa hồ sơ"/>
</c:if>
<c:if test="${hoSoNhanVien.maNhanVien == 0}">
	<c:set var="titleHeader" value="Thêm hồ sơ"/>
</c:if>
   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0"><c:out value="${titleHeader}"/></h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Quản lý nhân sự</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Quản lý hồ sơ</a>
                        </li>
                        <li class="breadcrumb-item active"><c:out value="${titleHeader}"/>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <div class="content-header-right col-md-3 col-xs-12">
	            <div role="group" aria-label="Button group with nested dropdown" class="dropdown nav-item float-md-right">
	               <div role="group" class="btn-group">
	                  <button id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-outline-primary dropdown-toggle">
	                  	<i class="ft-settings icon-left"></i> Thông tin khác
	                  </button>
	                  <div aria-labelledby="btnGroupDrop1" class="dropdown-menu dropdown-menu-right">
	                  	<a href="#" class="dropdown-item"><i class="ft-user"></i> Thông tin hồ sơ</a>
	                  	<a href="#" class="dropdown-item"><i class="ft-user"></i> Thông tin bằng cấp</a>
	                  	<a href="#" class="dropdown-item"><i class="ft-user"></i> Thông tin chứng chỉ chuyên môn</a>
	                  	<a href="#" class="dropdown-item"><i class="ft-user"></i> Thông tin gia đình</a>
	                  	<a href="#" class="dropdown-item"><i class="ft-user"></i> Thông tin hợp đồng</a>
	                  	<a href="#" class="dropdown-item"><i class="ft-user"></i> Thông tin kinh nghiệm dự án</a>
	                  	<div class="dropdown-divider"></div>
	                  	<a href="#" class="dropdown-item text-xs-center">Xem tất cả</a>
	                  </div>
	               </div>
				</div>
            </div>
         </div>
         <div class="content-body">
             <!-- Basic form layout section start -->
	         <section id="horizontal-form-layouts">
	            <div class="row">
	               <div class="col-md-12">
	                  <div class="card">
	                     <div class="card-header">
	                        <h4 class="card-title" id="horz-layout-basic">Thông tin hồ sơ</h4>
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
										               <label>Mã nhân viên</label>
										               <form:input class="form-control" path="maNhanVien" readonly="true" disabled="true" placeholder="Mã nhân viên" />
										               <form:hidden path="maNhanVien" />
										            </div>
								         		</div>
								         		<div class="col-md-6">
										            <div class="form-group">
										               <label>Trạng thái hồ sơ</label>
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
										               <label>Phòng ban</label>
										               <form:select multiple="single" path="phongBan.maPhongBan" class="form-control">
												   		  <form:option selected = "true" disabled = "true" value="Chọn phòng ban" />
													   	  <form:options items="${phongBan}" itemValue="maPhongBan" itemLabel="tenPhongBan" />
													   </form:select>
													</div>
										         </div>
										         <div class="col-md-6">
										            <div class="form-group">
										               <label>Chức danh</label>
										               <form:select multiple="single" path="chucDanh.maChucDanh" class="form-control">
												   		  <form:option selected = "true" disabled = "true" value="Chọn chức danh" />
													   	  <form:options items="${chucDanh}" itemValue="maChucDanh" itemLabel="tenChucDanh" />
													   </form:select>
										            </div>
										         </div>
								         	</div>
								         </div>

								      	 <div class="col-md-4" style="text-align: center !important;">
									        <img width="175px" height="175px" src="/ffse-fbms/resources/images/nhan-vien/${hoSoNhanVien.anhDaiDien}">
								         </div>
								      </div>
								      <h4 class="form-section"><i class="ft-user"></i> Thông tin cơ bản</h4>
								      <div class="row">
								         <div class="col-md-6">
								            <div class="form-group">
								               <label>Họ đệm</label>
								               <form:input class="form-control" path="hoDem" placeholder="Họ đệm"/>
								            </div>
								         </div>
								         <div class="col-md-6">
								            <div class="form-group">
								               <label>Tên</label>
								               <form:input class="form-control" path="ten" placeholder="Tên"/>
								            </div>
								         </div>
								      </div>
								      <div class="row">
								         <div class="col-md-2">
								            <div class="form-group">
								               <label>Ngày sinh</label>
								               <form:input type="date" class="form-control" path="namSinh" placeholder="Ngày sinh" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened" />
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label>Giới tính</label>
								               <form:select multiple="single" path="gioiTinh" class="form-control">
										   		  <form:option selected = "true" disabled = "true" value="0" label="Chọn giới tính" />
										   		  <form:option value="1" label="Nam" />
										   		  <form:option value="2" label="Nữ" />
											   </form:select>
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label>Tình trạng hôn nhân</label>
								               <form:select multiple="single" path="tinhTrangHonNhan.maTinhTrangHonNhan" class="form-control">
										   		  <form:option selected="true" disabled="true" value="-1" label="Chọn tình trạng" />
											   	  <form:options items="${tinhTrangHonNhan}" itemValue="maTinhTrangHonNhan" itemLabel="tinhTrangHonNhan" />
											   </form:select>
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label>Quốc tịch</label>
								               <form:select multiple="single" path="quocTich.maQuocTich" class="form-control">
										   		  <form:option selected = "true" disabled = "true" value="Chọn quốc tịch" />
											   	  <form:options items="${quocTich}" itemValue="maQuocTich" itemLabel="tenQuocTich" />
											   </form:select>
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label>Dân tộc</label>
								               <form:input class="form-control" path="danToc" placeholder="Dân tộc"/>
								            </div>
								         </div>
								      </div>
								      <div class="row">
								         <div class="col-md-4">
								            <div class="form-group">
								               <label>Số CMND</label>
								               <form:input class="form-control" path="soCmnd" placeholder="Số CMND"/>
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label for="noiCap">Nơi cấp</label>
								               <form:input class="form-control" path="noiCap" placeholder="Nơi cấp"/>
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label>Ngày cấp</label>
								               <form:input type="date" class="form-control" path="ngayCap" placeholder="Ngày cấp" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened" />
								            </div>
								         </div>
								      </div>
								      <div class="form-group">
									      <label for="file">Ảnh đại diện</label>
									      <label class="file block">
										  	<input type="file" id="image" name="image">
										  	<form:hidden path="anhDaiDien" />
										  </label>
								      </div>
								      <h4 class="form-section"><i class="fa fa-home"></i> Thông tin liên hệ</h4>
								      <div class="form-group">
								         <label for="queQuan">Quê quán</label>
								         <form:input class="form-control" path="queQuan" placeholder="Quê quán"/>
								      </div>
								      <div class="form-group">
								         <label for="noiTamTru">Nơi ở hiện nay</label>
								         <form:input class="form-control" path="noiTamTru" placeholder="Nơi ở hiện nay"/>
								      </div>
								      <div class="row">
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="email">Email</label>
								         	   <form:input class="form-control" path="email" placeholder="Email"/>
								            </div>
								         </div>
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="dienThoai">Điện thoại</label>
								         	   <form:input class="form-control" path="soDienThoai" placeholder="Điện thoại"/>
								            </div>
								         </div>
								      </div>
								   </div>
								   <div class="form-actions center">
								      <button type="button" class="btn btn-warning mr-1">
								         <i class="ft-x"></i> Hủy
								      </button>
								      <button type="submit" class="btn btn-primary">
								         <i class="fa fa-check-square-o"></i> Lưu
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