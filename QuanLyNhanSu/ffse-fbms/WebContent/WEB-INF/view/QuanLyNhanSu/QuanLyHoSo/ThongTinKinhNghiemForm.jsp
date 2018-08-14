<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<jsp:include page="/WEB-INF/view/templates/header.jsp" />

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0"><spring:message code="label.thongTinGiaDinh" /></h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.trangChu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.quanLyNhanSu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="<c:url value = "/ns/ho_so"/>"><spring:message code="label.quanLyHoSo" /></a>
                        </li>
                        <li class="breadcrumb-item active"><spring:message code="label.thongTinGiaDinh" />
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
								<form:form class="form form-horizontal" method="POST" action="/ffse-fbms/ns/ho_so/gia_dinh/save" modelAttribute="thongTinGiaDinhForm" enctype="multipart/form-data">
								   <div class="form-body">
								      <div class="row">
								         <div class="col-md-8">
								         	<div class="row">
								         		<div class="col-md-6">
									         		<div class="form-group">
										               <label><spring:message code="label.maNhanVien" /></label>
										               <fmt:formatNumber type="number" var="maNhanVienFormat" minIntegerDigits="5" groupingUsed="false" value="" />
													   <input placeholder="" class="form-control" value="" disabled type="text">
										            </div>
								         		</div>
								         		<div class="col-md-6">
										            <div class="form-group">
										               <label><spring:message code="label.trangThai" /></label>
										               <select class="form-control" disabled> 
												   		  <option></option>
													   </select>
										            </div>
								         		</div>
								         	</div>
								         	<div class="row">
									         	<div class="col-md-6">
										            <div class="form-group">
										               <label><spring:message code="label.phongBan" /></label>
										               <select class="form-control" disabled>
												   		  <option></option>
													   </select>
													</div>
										         </div>
										         <div class="col-md-6">
										            <div class="form-group">
										               <label><spring:message code="label.chucDanh" /></label>
										               <select class="form-control" disabled>
												   		  <option></option>
													   </select>
										            </div>
										         </div>
								         	</div>
								         </div>
								      	 <div class="col-md-4" style="text-align: center !important;">
									        <img width="175px" height="175px" src="/ffse-fbms/resources/images/nhan-vien/">
								         </div>
								      </div>
								      <h4 class="form-section"><i class="ft-user"></i> <spring:message code="label.thongTinGiaDinh" /></h4>
								      	<div class="thong-tin-gia-dinh">
									      <div class="repeater-list">
									      	<c:forEach items="" var="thongTinGiaDinh" varStatus="status">
									      	<div id="repeater-item" class="repeater-item">
										      <form:hidden path="listThongTinGiaDinh[].id" />
										      <form:hidden path="listThongTinGiaDinh[].hoSoNhanVien.maNhanVien" />
										      <div class="row" data-repeater-item>
										         <div class="col-md-4">
										            <div class="form-group">
										               <label><spring:message code="label.hoDem" /></label>
										               <form:input class="form-control" path="listThongTinGiaDinh[].hoDem" placeholder=""/>
										            </div>
										         </div>
										         <div class="col-md-4">
										            <div class="form-group">
										               <label><spring:message code="label.ten" /></label>
										               <form:input class="form-control" path="listThongTinGiaDinh[].ten" placeholder=""/>
										            </div>
										         </div>
										         <div class="col-md-4">
										            <div class="form-group">
										               <label><spring:message code="label.quanHe" /></label>
										               <form:input class="form-control" path="listThongTinGiaDinh[].quanHe" placeholder=""/>
										            </div>
										         </div>
										      </div>
										      <div class="row">
										         <div class="col-md-4">
										            <div class="form-group">
										               <label><spring:message code="label.ngaySinh" /></label>
										               <form:input type="date" class="form-control" path="listThongTinGiaDinh[].namSinh" placeholder="" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened" />
										            </div>
										         </div>
										         <div class="col-md-4">
										            <div class="form-group">
										               <label><spring:message code="label.gioiTinh" /></label>
										               <form:select multiple="single" path="listThongTinGiaDinh[].gioiTinh" class="form-control">
												   		  <form:option selected = "true" disabled = "true" value="0" label="Chọn giới tính" />
												   		  <form:option value="1" label="Nam" />
												   		  <form:option value="2" label="Nữ" />
													   </form:select>
										            </div>
										         </div>
										         <div class="col-md-4">
										            <div class="form-group">
										               <label for="dienThoai"><spring:message code="label.dienThoai" /></label>
										         	   <form:input class="form-control" path="listThongTinGiaDinh[].soDienThoai" placeholder=""/>
										            </div>
										         </div>
										      </div>
										      <div class="row">
										         <div class="col-md-8">
										            <div class="form-group">
										               <label for="queQuan"><spring:message code="label.queQuan" /></label>
										               <form:input class="form-control" path="listThongTinGiaDinh[].queQuan" placeholder=""/>
										            </div>
										         </div>
										         <div class="col-md-4">
										            <div class="form-group mt-2" style=" text-align: center; ">
										               <button type="button" class="btn btn-danger" id="listThongTinGiaDinh-delete" data-onclick="#listThongTinGiaDinh-delete" data-toggle="modal" data-target="#confirm-delete"> <i class="ft-x"></i> <spring:message code="label.xoa" /></button>
										            </div>
										         </div>
										      </div>
										      <div class="form-section"></div>
										  	</div>
									      </c:forEach>
									      	<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		                                       <div class="modal-dialog">
		                                          <div class="modal-content">
		      
		                                             <div class="modal-header">
		                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                                                <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>
		                                             </div>
		      
		                                             <div class="modal-body">
		                                                <p>You are about to delete one product, this procedure is irreversible.</p>
		                                                <p>Do you want to proceed?</p>
		                                                <p class="debug-url"></p>
		                                             </div>
		      
		                                             <div class="modal-footer">
		                                                <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.huy" /></button>
		                                                <a class="btn btn-danger btn-ok"><spring:message code="label.xoa" /></a>
		                                             </div>
		                                          </div>
		                                       </div>
		                                    </div>
	                                    	<script>
	                                    	window.onload = function(){
	                                    		$('#confirm-delete').on('show.bs.modal', function(e) {
	                                    			$(this).find('.btn-ok').click(function(){
	                                    				delete_form($(e.relatedTarget).data('onclick'));
	                                    				$('#confirm-delete .close').click();
		                                    		});
	    	                                    });
	                                    	};
	                                    	function add_form(ele) {
	                                    		var countForm = $('.repeater-item').length;
	                                    		
	                                    		htmlForm = "<div class=\"repeater-item\" id=\"repeater-item" + countForm + "\">" + $(".repeater-item").html() + "</div>";
	                                    		htmlForm = htmlForm.replace(/listThongTinGiaDinh0/gi, "listThongTinGiaDinh" + countForm);
	                                    		htmlForm = htmlForm.replace(/listThongTinGiaDinh\[0\]/gi, "listThongTinGiaDinh[" + countForm + "]");
	                                    		
	                                            $(".repeater-list").append(htmlForm);
	
	                                    	    $(ele).find(':input').each(function() {
	                                    	        switch(this.type) {
	                                    	            case 'date':
	                                    	            case 'password':
	                                    	            case 'select-multiple':
	                                    	            case 'text':
	                                    	            case 'textarea':
	                                    	                $(this).val('');
	                                    	                break;
	                                    	            case 'checkbox':
	                                    	            case 'radio':
	                                    	                this.checked = false;
	                                    	                break;
	                                    	            case 'select-one':
	                                    	            	$(this).val('0');
	                                    	                break;
	                                    	        }
	                                    	    });
	                                    	    selectIdTTGD = "#listThongTinGiaDinh" + countForm + "\\.id";
	                                    	    $(selectIdTTGD).val("NULL");
	                                    	}
	                                    	function delete_form(ele) {
	                                        	index = ele.match(/\d+/);
	                                        	ele = "#repeater-item" + index;
	                                    		$(ele).hide();
	                                    		selectIdTTGD = "#listThongTinGiaDinh" + index + "\\.id";
	                                    	    
	                                    	    if ($(selectIdTTGD).val() == "NULL") {
	                                    	    	$(ele).remove();
	                                        	} else {
	                                        		$(selectIdTTGD).val("-"+$(selectIdTTGD).val());
	                                            }
	                                    	}
	                                      	</script>
									      </div>
									      	<button class="btn btn-primary btn-lg" type="button" onclick="add_form('.repeater-item:last')">
	                                        	<i class="icon-plus4"></i> <spring:message code="label.them" />
	                                    	</button>
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