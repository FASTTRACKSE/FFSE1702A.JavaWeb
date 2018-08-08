<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-6 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0">Data Products</h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Manage Products</a>
                        </li>
                        <li class="breadcrumb-item active">Data Products
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <div class="content-header-right col-md-6 col-xs-12">
               <div role="group" aria-label="Button group with nested dropdown" class="btn-group float-md-right" id="add-new">
                  <a href="#" class="btn btn-primary"><span class="fa fa-plus"></span> Add New</a>
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
                           <div style="margin-top: 1.5rem">
                              <div style="margin: 0 auto!important; <?php echo isset($_SESSION['success_msg']) ? 'display:block' : 'display:none'; ?>" class="alert alert-icon-left alert-success alert-dismissible mb-2" role="alert">
                                 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                 </button>
                                 xxxxxxxxxxxxxxxxxxxxxxx
                              </div>
                           </div>
                           <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                           <div class="heading-elements">
                              <ul class="list-inline mb-0">
                                 <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                 <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                              </ul>
                           </div>
                        </div>
                        <div class="card-body collapse in">
                           <div class="card-block card-dashboard">
                              <table class="table table-striped table-bordered zero-configuration">
                                 <thead>
                                    <tr>
                                       <th>#</th>
                                       <th>Name</th>
                                       <th>Thumb</th>
                                       <th>Info</th>
                                       <th>Action</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>
                                          1
                                       </td>
                                       <td>
                                          Name
                                       </td>
                                       <td>
                                          Thumb
                                       </td>
                                       <td>
                                          Info
                                       </td>
                                       <td style="letter-spacing: 5px; min-width: 75px;">
                                          <a href="#"><i class="fa fa-eye"></i></a>
                                          <a href="#"><i class="fa fa-pencil"></i></a>
                                          <a href="javascript:void(0);" data-toggle="modal" data-target="#confirm-delete" data-href="#"><i class="fa fa-trash"></i></a>
                                       </td>
                                    </tr>
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
                                       $('#confirm-delete')
                                          .on('show.bs.modal', function (e) {
                                             $(this)
                                                .find('.btn-ok')
                                                .attr('href', $(e.relatedTarget)
                                                   .data('href'));
                                          });
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