<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0">Thêm hồ sơ</h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Quản lý nhân sự</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Quản lý hồ sơ</a>
                        </li>
                        <li class="breadcrumb-item active">Thêm hồ sơ
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
								<form class="form form-horizontal">
								   <div class="form-body">
								      <div class="row">
								         <div class="col-md-3">
								            <div class="form-group">
								               <label for="projectinput1">Mã nhân viên</label>
								               <input type="text" id="projectinput1" class="form-control" placeholder="Mã nhân viên" name="maNhanVien">
								            </div>
								         </div>
								         <div class="col-md-3">
								            <div class="form-group">
								               <label for="projectinput2">Phòng ban</label>
								               <select id="projectinput2" name="phongBan.maPhongBan" class="form-control">
								                  <option selected disabled>Chọn phòng ban</option>
								                  <option value="PIT">Phòng IT</option>
								                  <option value="PNS">Phòng nhân sự</option>
								               </select>
								            </div>
								         </div>
								         <div class="col-md-3">
								            <div class="form-group">
								               <label for="projectinput3">Chức danh</label>
								               <select id="projectinput3" name="chucDanh.maChucDanh" class="form-control">
								                  <option selected disabled>Chọn chức danh</option>
								                  <option value="GD">Giám đốc</option>
								                  <option value="NV">Nhân viên</option>
								               </select>
								            </div>
								         </div>
								         <div class="col-md-3">
								            <div class="form-group">
								               <label for="projectinput4">Trạng thái hồ sơ</label>
								               <select id="projectinput4" name="trangThaiHoSo" class="form-control">
								                  <option selected disabled>Chọn chức danh</option>
								                  <option value="0">Đang làm việc</option>
								                  <option value="1">Nghỉ việc</option>
								               </select>
								            </div>
								         </div>
								      </div>
								      <h4 class="form-section"><i class="ft-user"></i> Thông tin cơ bản</h4>
								      <div class="row">
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="projectinput5">Họ đệm</label>
								               <input type="text" id="projectinput5" class="form-control" placeholder="Họ đệm" name="hoDem">
								            </div>
								         </div>
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="projectinput6">Tên</label>
								               <input type="text" id="projectinput6" class="form-control" placeholder="Tên" name="ten">
								            </div>
								         </div>
								      </div>
								      <div class="row">
								         <div class="col-md-4">
								            <div class="form-group">
								               <label for="projectinput7">Ngày sinh</label>
								               <input type="date" id="issueinput7" class="form-control" name="namSinh" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened" data-original-title="" title="">
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label for="projectinput8">Giới tính</label>
								               <select id="projectinput8" name="gioiTinh" class="form-control">
								                  <option selected disabled>Chọn giới tính</option>
								                  <option value="0">Nữ</option>
								                  <option value="1">Nam</option>
								               </select>
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label for="projectinput9">Quốc tịch</label>
								               <select id="projectinput9" name="quocTich" class="form-control">
								                  <option selected disabled>Chọn quốc tịch</option>
								                  <option value="0">Việt Nam</option>
								                  <option value="1">Nam Việt</option>
								               </select>
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label for="projectinput10">Dân tộc</label>
								               <input type="text" id="projectinput10" class="form-control" placeholder="Dân tộc" name="danToc">
								            </div>
								         </div>
								         <div class="col-md-2">
								            <div class="form-group">
								               <label for="projectinput11">Tình trạng hôn nhân</label>
								               <select id="projectinput11" name="tinhTrangHonNhan" class="form-control">
								                  <option selected disabled>Chọn tình trạng hôn nhân</option>
								                  <option value="0">FA</option>
								                  <option value="1">Ế</option>
								               </select>
								            </div>
								         </div>
								      </div>
								      <div class="row">
								         <div class="col-md-4">
								            <div class="form-group">
								               <label for="projectinput12">Số CMND</label>
								               <input type="text" id="projectinput12" class="form-control" placeholder="Số cmnd" name="soCmnd">
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label for="projectinput13">Ngày cấp</label>
								               <input type="date" id="issueinput13" class="form-control" name="ngayCap" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened" data-original-title="" title="">
								            </div>
								         </div>
								         <div class="col-md-4">
								            <div class="form-group">
								               <label for="noiCap">Nơi cấp</label>
								               <input type="text" id="noiCap" class="form-control" placeholder="Nơi cấp" name="noiCap">
								            </div>
								         </div>
								      </div>
								      <div class="form-group">
								         <label for="file">Ảnh đại diện</label>
								         <div><label class="file center-block">
								            <input type="file" id="file">
								            <span class="file-custom"></span>
								         </label></div>
								      </div>
								      <h4 class="form-section"><i class="fa fa-home"></i> Thông tin liên hệ</h4>
								      <div class="form-group">
								         <label for="queQuan">Quê quán</label>
								         <input type="text" id="queQuan" class="form-control" placeholder="Quê quán" name="queQuan">
								      </div>
								      <div class="form-group">
								         <label for="noiTamTru">Nơi ở hiện nay</label>
								         <input type="text" id="noiTamTru" class="form-control" placeholder="Nơi ở hiện nay" name="noiTamTru">
								      </div>
								      <div class="row">
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="email">Email</label>
								               <input type="text" class="form-control email-inputmask" id="email-mask" placeholder="Enter Email Address" />
								            </div>
								         </div>
								         <div class="col-md-6">
								            <div class="form-group">
								               <label for="dienThoai">Điện thoại</label>
								               <input type="text" id="dienThoai" class="form-control" placeholder="Điện thoại" name="dienThoai">
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
								</form>
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