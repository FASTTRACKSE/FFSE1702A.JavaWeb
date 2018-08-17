<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@page import="java.io.File"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>

<jsp:include page="/WEB-INF/view/templates/header.jsp" />

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0"><spring:message code="label.thongTinKinhNghiem" /></h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.trangChu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.quanLyNhanSu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="<c:url value = "/ns/ho_so"/>"><spring:message code="label.quanLyHoSo" /></a>
                        </li>
                        <li class="breadcrumb-item active"><spring:message code="label.thongTinKinhNghiem" />
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <div class="content-header-right col-md-3 col-xs-12">
	            <div role="group" aria-label="Button group with nested dropdown" class="dropdown nav-item float-md-right">
	               <div role="group" class="btn-group">
	                  <button id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-outline-primary dropdown-toggle">
	                  	<i class="ft-settings icon-left"></i> <spring:message code="label.thongTinKhac" />
	                  </button>
	                  <div aria-labelledby="btnGroupDrop1" class="dropdown-menu dropdown-menu-right">
	                  	<a href="<c:url value = "/ns/ho_so/edit/"/>" class="dropdown-item"><i class="fa fa-id-card-o"></i> <spring:message code="label.thongTinHoSo" /></a>
	                  	<a href="<c:url value = "/ns/ho_so/bang_cap/edit/"/>" class="dropdown-item"><i class="fa fa-graduation-cap"></i> <spring:message code="label.thongTinBangCap" /></a>
	                  	<a href="<c:url value = "/ns/ho_so/gia_dinh/edit/"/>" class="dropdown-item"><i class="fa fa-users"></i> <spring:message code="label.thongTinGiaDinh" /></a>
	                  	<a href="<c:url value = "/ns/ho_so/kinh_nghiem/edit/"/>" class="dropdown-item"><i class="fa fa-file-code-o"></i> <spring:message code="label.thongTinKinhNghiem" /></a>
	                  	<a href="<c:url value = "/ns/hop_dong/edit/"/>" class="dropdown-item"><i class="fa fa-handshake-o"></i> <spring:message code="label.thongTinHopDong" /></a>
	                  	<div class="dropdown-divider"></div>
	                  	<a href="#" class="dropdown-item text-xs-center"><spring:message code="label.xemTatCa" /></a>
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
								<form:form class="form form-horizontal" method="POST" action="/ffse-fbms/ns/ho_so/gia_dinh/save" modelAttribute="tatCaThongTin">
								   <div class="form-body">
								      <div class="row edit-row-title-ho-so" style="background: #00A5A8; padding: 15px; color: #fff">
								         <div class="col-md-3" style="text-align: center !important;">
								         	<img class="rounded-circle" width="180px" height="180px" src="/ffse-fbms/resources/images/nhan-vien/${hoSoNhanVien.anhDaiDien}">
								         </div>
								      	 <div class="col-md-4">
								      	 	<h2>${hoSoNhanVien.hoDem} ${hoSoNhanVien.ten}</h2>
								      	 	<h4>${hoSoNhanVien.phongBan.tenPhongBan}</h4>
								      	 	<h4>${hoSoNhanVien.chucDanh.tenChucDanh}</h4>
								      	 	<h6>Tình trạng: ${hoSoNhanVien.trangThai == 1 ? "Đang làm việc" : "Đã nghỉ việc"}</h6>
								      	 </div>
								      	 <div class="col-md-5">
								      	 	<h4><span class="fa fa-phone" style="display: inline-block; border-radius: 60px; border: solid 1px #fff; padding: 0.5em 0.6em;"></span> ${hoSoNhanVien.soDienThoai}</h4>
								      	 	<h4><span class="fa fa-envelope" style="display: inline-block; border-radius: 60px; border: solid 1px #fff; padding: 0.5em 0.5em;"></span> ${hoSoNhanVien.email}</h4>
								      	 	<h4><span class="fa fa-venus-mars" style="display: inline-block; border-radius: 60px; border: solid 1px #fff; padding: 0.5em 0.4em;"></span> ${hoSoNhanVien.gioiTinh == 1 ? "Nam" : "Nữ" }</h4>
								      	 	<h4><span class="fa fa-map-marker" style="display: inline-block; border-radius: 60px; border: solid 1px #fff; padding: 0.5em 0.65em;"></span> ${hoSoNhanVien.namSinh}</h4>
								      	 </div>
								      </div>
								      <div class="panel-group" id="accordion">
									    <div class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><i class="ft-user"></i> <spring:message code="label.thongTinCaNhan" /></a>
									        </h4>
									      </div>
									      <div id="collapse1" class="panel-collapse collapse">
										      	<div class="thong-tin-ca-nhan">
											      	<div class="repeater-list">
											      		<div class="row">
											      			<div class="col-md-6">
											      				<p><strong>Dân tộc: </strong>${hoSoNhanVien.danToc}</p>
													      	 	<p><strong>Quê quán: </strong>${hoSoNhanVien.queQuan}</p>
													      	 </div>
													      	 <div class="col-md-6">
													      	 	<p><strong>Tình trạng hôn nhân: </strong>${hoSoNhanVien.tinhTrangHonNhan.tinhTrangHonNhan }</p>
													      	 	<p><strong>Nơi ở hiện nay: </strong>${hoSoNhanVien.noiTamTru}</p>
													      	 </div>
													      	 <div class="col-md-3">
													      	 	<p><strong>CMND Số: </strong>${hoSoNhanVien.soCmnd}</p>
													      	 </div>
													      	 <div class="col-md-3">
													      	 	<p><strong>Ngày cấp: </strong>${hoSoNhanVien.ngayCap}</p>
													      	 </div>
													      	 <div class="col-md-6">
													      	 	<p><strong>Nơi cấp: </strong>${hoSoNhanVien.noiCap}</p>
													      	 </div>
											      		</div>
											      	</div>
											    </div>
									      </div>
									    </div>
									    <div class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse2"><i class="ft-user"></i> <spring:message code="label.thongTinGiaDinh" /></a>
									        </h4>
									      </div>
									      <div id="collapse2" class="panel-collapse collapse">
										      	<div class="thong-tin-gia-dinh">
												      	<div class="repeater-list">
												      	<c:forEach items="${hoSoNhanVien.thongTinGiaDinhs }" var="thongTinGiaDinh" varStatus="stt">
												      		<div class="row form-section">
												      			<div class="col-md-4">
												      				<p><strong>Họ tên: </strong>${thongTinGiaDinh.hoDem} ${thongTinGiaDinh.ten}</p>
														      	 	<p><strong>Ngày sinh: </strong>${hoSoNhanVien.namSinh}</p>
														      	 </div>
														      	 <div class="col-md-4">
														      	 	<p><strong>Giới tính: </strong>${thongTinGiaDinh.gioiTinh == 1 ? "Nam" : "Nữ" }</p>
														      	 	<p><strong>Điện thoại: </strong>${thongTinGiaDinh.soDienThoai}</p>
														      	 </div>
														      	 <div class="col-md-4">
														      	 	<p><strong>Quan hệ: </strong>${thongTinGiaDinh.quanHe}</p>
														      	 	<p><strong>Quê quán: </strong>${thongTinGiaDinh.queQuan}</p>
														      	 </div>
												      		</div>
												      		</c:forEach>
												      	</div>
											    </div>
									      </div>
									    </div>
									    <div class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse3"><i class="ft-user"></i> <spring:message code="label.thongTinBangCap" /></a>
									        </h4>
									      </div>
									      <div id="collapse3" class="panel-collapse collapse">
										      	<div class="thong-tin-bang-cap">
												      	<div class="repeater-list">
												      	<c:forEach items="${hoSoNhanVien.thongTinBangCaps }" var="thongTinBangCap" varStatus="stt">
												      		<div class="row form-section">
												      			<div class="col-md-6">
												      				<p><strong>Tên bằng: </strong>${thongTinBangCap.tenBangCap}</p>
														      	 	<p><strong>Nơi cấp: </strong>${thongTinBangCap.donViCap}</p>
														      	 </div>
														      	 <div class="col-md-6">
														      	 	<p><strong>Loại bằng: </strong>${thongTinBangCap.loaiBangCap }</p>
														      	 	<p><strong>Ngày cấp: </strong>${thongTinBangCap.ngayCap}</p>
														      	 </div>
												      		</div>
												      		</c:forEach>
												      	</div>
											    </div>
									      </div>
									    </div>
									    <div class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse4"><i class="ft-user"></i> <spring:message code="label.thongTinBangCap" /></a>
									        </h4>
									      </div>
									      <div id="collapse4" class="panel-collapse collapse in">
										      	<div class="thong-tin-bang-cap">
												      	<div class="repeater-list">
												      		<div class="row form-section">
												      			<div class=" col-md-4">
												      				<!-- load Google AJAX API -->
																        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
																         <script type="text/javascript">
																            // Load the Visualization API and the piechart package.
																            google.load('visualization', '1', {'packages': ['columnchart']});
																
																            // Set a callback to run when the Google Visualization API is loaded.
																            google.setOnLoadCallback(drawChart);
																
																            // Callback that creates and populates a data table,
																            // instantiates the pie chart, passes in the data and
																            // draws it.
																            function drawChart() {
																
																                // Create the data table.    
																                var data = google.visualization.arrayToDataTable([
																                    ['Country', 'Area(square km)'],
																                    <c:forEach var="ngonNgu" items="${listNgonNgu }">
															      						['${ngonNgu.key}', ${ngonNgu.value}],
																      				</c:forEach>
																                ]);
																                // Set chart options
																                var options = {
																                    'title': 'NGÔN NGỮ DỰ ÁN',
																                    is3D: true,
																                    pieSliceText: 'label',
																                    tooltip: {showColorCode: true},
																                    'width': 250,
																                    'height': 200
																                };
																
																                // Instantiate and draw our chart, passing in some options.
																                var chart = new google.visualization.PieChart(document.getElementById('ChartNgonNgu'));
																                chart.draw(data, options);
																            }
																</script>
												      				<div id="ChartNgonNgu"></div>
												      			</div>
												      			<div class=" col-md-4">
												      				<!-- load Google AJAX API -->
																        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
																         <script type="text/javascript">
																            // Load the Visualization API and the piechart package.
																            google.load('visualization', '1', {'packages': ['columnchart']});
																
																            // Set a callback to run when the Google Visualization API is loaded.
																            google.setOnLoadCallback(drawChart);
																
																            // Callback that creates and populates a data table,
																            // instantiates the pie chart, passes in the data and
																            // draws it.
																            function drawChart() {
																
																                // Create the data table.    
																                var data = google.visualization.arrayToDataTable([
																                    ['Country', 'Area(square km)'],
																                    <c:forEach var="framework" items="${listFramework }">
														      						['${framework.key}', ${framework.value}],
															      				</c:forEach>
																                ]);
																                // Set chart options
																                var options = {
																                    'title': 'FRAMEWORK',
																                    is3D: true,
																                    pieSliceText: 'label',
																                    tooltip: {showColorCode: true},
																                    'width': 250,
																                    'height': 200
																                };
																
																                // Instantiate and draw our chart, passing in some options.
																                var chart = new google.visualization.PieChart(document.getElementById('ChartFrameWork'));
																                chart.draw(data, options);
																            }
																</script>
												      				<div id="ChartFrameWork"></div>
												      			</div>
												      			<div class=" col-md-4">
												      				<!-- load Google AJAX API -->
																        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
																         <script type="text/javascript">
																            // Load the Visualization API and the piechart package.
																            google.load('visualization', '1', {'packages': ['columnchart']});
																
																            // Set a callback to run when the Google Visualization API is loaded.
																            google.setOnLoadCallback(drawChart);
																
																            // Callback that creates and populates a data table,
																            // instantiates the pie chart, passes in the data and
																            // draws it.
																            function drawChart() {
																
																                // Create the data table.    
																                var data = google.visualization.arrayToDataTable([
																                    ['Country', 'Area(square km)'],
																                    <c:forEach var="database" items="${listDatabase }">
														      						['${database.key}', ${database.value}],
															      				</c:forEach>
																                ]);
																                // Set chart options
																                var options = {
																                    'title': 'CƠ SỞ DỮ LIỆU',
																                    is3D: true,
																                    pieSliceText: 'label',
																                    tooltip: {showColorCode: true},
																                    'width': 250,
																                    'height': 200
																                };
																
																                // Instantiate and draw our chart, passing in some options.
																                var chart = new google.visualization.PieChart(document.getElementById('ChartDatabase'));
																                chart.draw(data, options);
																            }
																</script>
												      				<div id="ChartDatabase"></div>
												      			</div>
												      		</div>
												      		<c:forEach items="${hoSoNhanVien.duAn }" var="duAn" varStatus="stt">
												      		<div class="row form-section">
												      			<div class="col-md-4">
												      				<p><strong>Mã dự án: </strong>${duAn.maDuAn}</p>
												      			</div>
												      			<div class="col-md-4">
												      				<p><strong>Tên dự án: </strong>${duAn.tenDuAn}</p>
												      			</div>
												      			<div class="col-md-4">
												      				<p><strong>Vai trò: </strong>
													      				<c:forEach items="${hoSoNhanVien.vaiTro}" var="vaiTro" varStatus="stt">
													      					<span class="tag tag-default tag-info">${vaiTro.tenVaiTro }</span>
													               		</c:forEach>
												               		</p>
												      			</div>
												      			<div class="col-md-12">
												      				<p><strong>Mô tả dự án: </strong>${duAn.moTaDuAn}</p>
												      			</div>
												      			<div class="col-md-4">
												      				<p><strong>Ngôn ngữ: </strong>
													      				<c:forEach items="${duAn.ngonNgu}" var="ngonNgu" varStatus="stt">
													               			<span class="tag tag-default tag-info">${ngonNgu.tenNgonNgu }</span>		   			
												               			</c:forEach>
												               		</p>
												      			</div>
												      			<div class="col-md-4">
												      				<p><strong>Framework: </strong>
													      				<c:forEach items="${duAn.framework}" var="framework" varStatus="stt">
														               		<span class="tag tag-default tag-info">${framework.tenFramework }</span>	
														               	</c:forEach>
												               		</p>
												      			</div>
												      			<div class="col-md-4">
												      				<p><strong>Database: </strong>
													      				<c:forEach items="${duAn.database}" var="database" varStatus="stt">
														               		<span class="tag tag-default tag-info">${database.tenDatabase }</span>	
														               	</c:forEach>
												               		</p>
												      			</div>
												      		</div>
												      		</c:forEach>
												      	</div>
											    </div>
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