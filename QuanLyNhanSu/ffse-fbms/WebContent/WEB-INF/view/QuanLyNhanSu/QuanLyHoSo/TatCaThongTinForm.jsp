<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<<<<<<< HEAD
=======
<%@page import="java.io.File"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
>>>>>>> 67cb89c1e9adf5fa7e110d6a7957855308daf61c

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
	                     <img id="preview" hidden class="rounded-circle" width="180px" height="180px" src="/ffse-fbms/resources/images/nhan-vien/${hoSoNhanVien.anhDaiDien}">
	                     <div id="pdfBody" class="card-body collapse in">
	                        <div class="card-block">
								   <div class="form-body">
								      <div class="row edit-row-title-ho-so" style="background: #00A5A8; padding: 15px; color: #fff">
								         <div class="col-md-3" style="text-align: center !important;">
								         	<img id="image2" class="rounded-circle" width="180px" height="180px" src="">
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
									    <div <c:if test="${empty hoSoNhanVien.ten}">style="display: none;"</c:if> class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><i class="ft-user"></i> <spring:message code="label.thongTinCaNhan" /></a>
									        </h4>
									      </div>
									      <div id="collapse1" class="panel-collapse collapse in">
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
									    <div <c:if test="${empty hoSoNhanVien.thongTinGiaDinhs}">style="display: none;"</c:if> class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse2"><i class="ft-user"></i> <spring:message code="label.thongTinGiaDinh" /></a>
									        </h4>
									      </div>
									      <div id="collapse2" class="panel-collapse collapse in">
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
									    <div <c:if test="${empty hoSoNhanVien.thongTinBangCaps}">style="display: none;"</c:if> class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse3"><i class="ft-user"></i> <spring:message code="label.thongTinBangCap" /></a>
									        </h4>
									      </div>
									      <div id="collapse3" class="panel-collapse collapse in">
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
									    <div <c:if test="${empty hoSoNhanVien.duAn}">style="display: none;"</c:if> class="panel panel-default ">
									      <div class="panel-heading form-section">
									        <h4 class="panel-title">
									          <br><a data-toggle="collapse" data-parent="#accordion" href="#collapse4"><i class="ft-user"></i> <spring:message code="label.thongTinKinhNghiem" /></a>
									        </h4>
									      </div>
									      <div id="collapse4" class="panel-collapse collapse in">
										      	<div class="thong-tin-bang-cap">
												      	<div class="repeater-list">
												      		<div class="row form-section">
												      			<div class=" col-md-4">
												      				<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

								                                    <script type="text/javascript">
								                                      google.charts.load("current", {packages:['corechart']});
								                                      google.charts.setOnLoadCallback(drawChart);
								                                      function drawChart() {
								                                  
								                                        var data = google.visualization.arrayToDataTable([
								                                          ['Element', 'Density'],
								                                          <c:forEach var="ngonNgu" items="${listNgonNgu }">
								                                              ['${ngonNgu.key}', ${ngonNgu.value}],
								                                            </c:forEach>
								                                        ]);
								                                  
								                                        var options = {
								                                          'title': 'NGÔN NGỮ DỰ ÁN',
								                                                is3D: true,
								                                                tooltip: {showColorCode: true},
								                                                'width': 300,
								                                                'height': 250
								                                        };
								                                  
								                                        var chart_div = document.getElementById('ChartNgonNgu');
								                                        var chart = new google.visualization.PieChart(chart_div);
								                                  
								                                        // Wait for the chart to finish drawing before calling the getImageURI() method.
								                                        /* google.visualization.events.addListener(chart, 'ready', function () {
								                                          console.log(1);
								                                            var chartImg = chart.getImageURI();
								                                            var preview = document.getElementById('chartImgDatabase');
								                                            preview.src = chartImg;
								                                            console.log(chart.getImageURI());
								                                        }); */
								                                  
								                                        chart.draw(data, options);
								                                  
								                                    }
								                                    </script>
												      				<div id="ChartNgonNgu"></div>
												      			</div>
												      			<div class=" col-md-4">
												      				<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

								                                    <script type="text/javascript">
								                                      google.charts.load("current", {packages:['corechart']});
								                                      google.charts.setOnLoadCallback(drawChart);
								                                      function drawChart() {
								                                  
								                                        var data = google.visualization.arrayToDataTable([
								                                          ['Element', 'Density'],
								                                          <c:forEach var="framework" items="${listFramework }">
								                                              ['${framework.key}', ${framework.value}],
								                                            </c:forEach>
								                                        ]);
								                                  
								                                        var options = {
								                                          'title': 'FRAMEWORK',
								                                                is3D: true,
								                                                tooltip: {showColorCode: true},
								                                                'width': 300,
								                                                'height': 250
								                                        };
								                                  
								                                        var chart_div = document.getElementById('ChartFrameWork');
								                                        var chart = new google.visualization.PieChart(chart_div);
								                                  
								                                        // Wait for the chart to finish drawing before calling the getImageURI() method.
								                                       /*  google.visualization.events.addListener(chart, 'ready', function () {
								                                          console.log(1);
								                                            var chartImg = chart.getImageURI();
								                                            var preview = document.getElementById('chartImgDatabase');
								                                            preview.src = chartImg;
								                                            console.log(chart.getImageURI());
								                                        }); */
								                                  
								                                        chart.draw(data, options);
								                                  
								                                    }
								                                    </script>
												      				<div id="ChartFrameWork"></div>
												      			</div>
												      			<div class=" col-md-4">
												      				<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

																	  <script type="text/javascript">
																	    google.charts.load("current", {packages:['corechart']});
																	    google.charts.setOnLoadCallback(drawChart);
																	    function drawChart() {
																	
																	      var data = google.visualization.arrayToDataTable([
																	        ['Element', 'Density'],
																	        <c:forEach var="database" items="${listDatabase }">
																	            ['${database.key}', ${database.value}],
																	        </c:forEach>
																	      ]);
																	
																	      var options = {
																	        'title': 'CƠ SỞ DỮ LIỆU',
																	              is3D: true,
																	              tooltip: {showColorCode: true},
																	              'width': 300,
																	              'height': 250
																	      };
																	
																	      var chart_div = document.getElementById('ChartDatabase');
																	      var chart = new google.visualization.PieChart(chart_div);
																	
																	      // Wait for the chart to finish drawing before calling the getImageURI() method.
																	      /* google.visualization.events.addListener(chart, 'ready', function () {
																	    	  console.log(1);
																	          var chartImg = chart.getImageURI();
																	          var preview = document.getElementById('chartImgDatabase');
																	          preview.src = chartImg;
																	          console.log(chart.getImageURI());
																	      }); */
																	
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
								<%-- </form:form> --%>
	                        </div>
	                     </div>
	                     <div style="text-align: center; border-top: 1px solid #d3dce9; padding: 20px 0; margin-top: 20px;" class="form-actions center">
					      <a href="<c:url value = "/ns/ho_so"/>"><button type="button" class="btn btn-warning mr-1">
					         <i class="ft-x"></i> <spring:message code="label.quaylai" />
					      </button></a>
					      <button id="save" type="submit" class="btn btn-primary">
					         <i class="fa fa-check-square-o"></i> <spring:message code="label.luuPDF" />
					      </button>
					   </div>
	                  </div>
	               </div>
	            </div>
	         </section>
	         <!-- // Basic form layout section end -->
         </div>
      </div>
   </div>
  <script src="/ffse-fbms/resources/dist/html2pdf.bundle.min.js"></script>
  <script>
     function toDataURL(src, callback, outputFormat) {
  var img = new Image();
  img.crossOrigin = 'Anonymous';
  img.onload = function() {
    var canvas = document.createElement('CANVAS');
    var ctx = canvas.getContext('2d');
    var dataURL;
    canvas.height = this.naturalHeight;
    canvas.width = this.naturalWidth;
    ctx.drawImage(this, 0, 0);
    dataURL = canvas.toDataURL(outputFormat);
    callback(dataURL);
  };
  img.src = src;
  if (img.complete || img.complete === undefined) {
    img.src = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";
    img.src = src;
  }
  console.log(img.src);
}
var abc = document.getElementById("preview").src;
toDataURL(
  abc,
  function(dataUrl) {
    console.log('RESULT:', dataUrl)
    var image = document.getElementById("image2");
      image.src = dataUrl;
  }
)
    </script>
     <script>
  // var pdf = new jsPDF();
  var btn = document.getElementById('save');

  btn.addEventListener('click', function(event) {
    var content = document.getElementById('pdfBody');
    html2pdf(content, { useCORS: true });
  });
</script>
   <!-- ////////////////////////////////////////////////////////////////////////////-->
<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 