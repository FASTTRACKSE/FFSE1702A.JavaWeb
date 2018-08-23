<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0"><spring:message code="label.danhSachHoSo" /></h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.trangChu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message code="label.quanLyNhanSu" /></a>
                        </li>
                        <li class="breadcrumb-item"><a href="<c:url value = "/ns/ho_so"/>"><spring:message code="label.quanLyHoSo" /></a>
                        </li>
                        <li class="breadcrumb-item active"><spring:message code="label.danhSachHoSo" />
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <div class="content-header-right col-md-3 col-xs-12">
               <div role="group" aria-label="Button group with nested dropdown" class="btn-group float-md-right" id="add-new">
                  <a href="<c:url value = "/ns/ho_so/add"/>" class="btn btn-primary"><span class="fa fa-plus"></span> <spring:message code="label.themHoSo" /></a>
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
                           <h4 class="card-title">Datatable</h4>
                           <%-- <div style="margin-top: 1.5rem">
                              <div style="margin: 0 auto!important; <?php echo isset($_SESSION['success_msg']) ? 'display:block' : 'display:none'; ?>" class="alert alert-icon-left alert-success alert-dismissible mb-2" role="alert">
                                 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                 </button>
                                 xxxxxxxxxxxxxxxxxxxxxxx
                              </div>
                           </div> --%>
                           <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                           <div class="heading-elements">
                              <ul class="list-inline mb-0">
                                 <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                 <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                              </ul>
                           </div>
                        </div>
                        <style type="text/css">
                        	.table td {
                        		vertical-align: baseline;
			                }
			                th, td {
						    	padding-left: 1rem!important;
						    	padding-right: 1rem!important;
							}
						</style>
                        <div class="card-body collapse in">
                           <div class="card-block card-dashboard">
                              <table id="datatable" class="table table-striped table-bordered zero-configuration">
                                 <thead>
                                    <tr>
                                       <th><spring:message code="label.maNhanVien" /></th>
                                       <th><spring:message code="label.hoDem" /></th>
                                       <th><spring:message code="label.ten" /></th>
                                       <th>Tên hợp đồng</th>
                                       <th>Ngày ký kết</th>
                                       <th>Ngày kết thúc</th>
                                       <th>Trạng thái</th>
                                       <th></th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                 	<c:forEach items="${listHopDong}" var="hshd" varStatus="loop">
                                    <tr>
                                       <td><fmt:formatNumber type="number" minIntegerDigits="5" groupingUsed="false" value="${hshd.hoSoNhanVien.maNhanVien}" /></td>
                                       <td>${hshd.hoSoNhanVien.hoDem}</td>
                                       <td>${hshd.hoSoNhanVien.ten}</td>
                                       <td>${hshd.loaiHopDong.tenHopDong}</td>
                                       <td>${hshd.ngayKyKet}</td>    
                                       <td>${hshd.ngayKetThuc}</td>                                     
                                       <td style="letter-spacing: 5px; min-width: 75px;text-align: center !important;">
                                          <a href="<c:url value = "/ns/hop_dong/edit/${hshd.hoSoNhanVien.maNhanVien}"/>"><i class="fa fa-pencil"></i></a>
                                       </td>
                                    </tr>
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
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                <a class="btn btn-danger btn-ok">Delete</a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <script>
                                    	window.onload = function(){
                                    		$('#confirm-delete').on('show.bs.modal', function(e) {
    	                                        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    	                                    });
                                    		$("#datatable").dataTable().fnDestroy();
  									        $("#datatable").dataTable({
  									    	  responsive: true,
  									    	  "order": [[6 , "asc" ], [0, "desc"]],
  									          "bServerSide" : true,
  									          "sAjaxSource" : "/ffse-fbms/${maPhongBan}/getListHopDong",
  									        });
                                    	};
                                    </script>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            
            <!--/ Zero configuration table -->
         </div>
      </div>
   </div>
   <!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 