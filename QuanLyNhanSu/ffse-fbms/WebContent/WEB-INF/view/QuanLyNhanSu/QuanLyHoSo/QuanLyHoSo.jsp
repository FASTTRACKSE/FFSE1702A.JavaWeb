<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0">Danh sách hồ sơ</h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Quản lý nhân sự</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Quản lý hồ sơ</a>
                        </li>
                        <li class="breadcrumb-item active">Danh sách hồ sơ
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <div class="content-header-right col-md-3 col-xs-12">
               <div role="group" aria-label="Button group with nested dropdown" class="btn-group float-md-right" id="add-new">
                  <a href="<c:url value = "/ns/ho_so/add"/>" class="btn btn-primary"><span class="fa fa-plus"></span> Thêm hồ sơ</a>
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
                              <table class="table table-striped table-bordered zero-configuration">
                                 <thead>
                                    <tr>
                                       <th>#</th>
                                       <th>Mã</th>
                                       <th>Phòng ban</th>
                                       <th>Chức danh</th>
                                       <th>Họ đệm</th>
                                       <th>Tên</th>
                                       <th>Năm sinh</th>
                                       <th>Giới tính</th>
                                       <th>Quê quán</th>
                                       <th>Ảnh đại diện</th>
                                       <th>Trạng thái</th>
                                       <th>Hành động</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                 	<c:forEach items="${listHoSo}" var="hsnv" varStatus="loop">
                                    <tr>
                                       <td>${count + loop.count}</td>
                                       <td>${String.format("%05d", hsnv.maNhanVien)}</td>
                                       <td><a href="<c:url value = "/${hsnv.phongBan.maPhongBan}/ho_so"/>">${hsnv.phongBan.tenPhongBan}</a></td>
                                       <td>${hsnv.chucDanh.tenChucDanh}</td>
                                       <td>${hsnv.hoDem}</td>
                                       <td>${hsnv.ten}</td>
                                       <td>${hsnv.namSinh}</td>
                                       <td>${hsnv.gioiTinh == 0 ? "Nữ" : "Nam"}</td>
                                       <td>${fn:substringAfter(fn:substringAfter(hsnv.queQuan,", "),", ")}</td>
                                       <td><img width="75px" height="75px" src="<c:url value="/resources/images/nhan-vien/${hsnv.anhDaiDien}"/>"></td>
                                       <td>${hsnv.trangThai == 0 ? "Nghỉ việc" : "Đang làm việc"}</td>
                                       <td style="letter-spacing: 5px; min-width: 75px;">
                                          <a href="<c:url value = "/ns/ho_so/${hsnv.maNhanVien}"/>"><i class="fa fa-eye"></i></a>
                                          <a href="<c:url value = "/ns/ho_so/edit/${hsnv.maNhanVien}"/>"><i class="fa fa-pencil"></i></a>
                                          <a href="javascript:void(0);" data-toggle="modal" data-target="#confirm-delete" data-href="<c:url value = "/ns/ho_so/delete/${hsnv.maNhanVien}"/>"><i class="fa fa-trash"></i></a>
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