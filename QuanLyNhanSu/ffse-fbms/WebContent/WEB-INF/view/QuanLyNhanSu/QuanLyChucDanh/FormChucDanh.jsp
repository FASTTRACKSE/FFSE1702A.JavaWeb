<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-9 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0">THÊM CHỨC DANH</h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">TRANG CHỦ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">QUẢN LÝ NHÂN SỰ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">QUẢN LÝ CHỨC DANH</a>
                        </li>
                        <li class="breadcrumb-item active">THÊM CHỨC DANH
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
		                  <center><h4 class="card-title" id="basic-layout-form-center"><i class="ft-user"></i>THÊM CHỨC DANH</h4></center>
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
		                    <form:form action="" commandName="chucdanh">
		                      <div class="row">
		                        <div class="col-md-6 offset-md-3">
		                          <div class="form-body" style="margin-top: 1rem;">
		                            <div class="form-group">
		                              <label>Mã chức danh</label>
		                              <input value="1" type="text" class="form-control" id="id_edit" placeholder="Mã chức danh...">
		                            </div>
		                            <div class="form-group">
		                              <label>Tên chức danh</label>
		                              <input value="Releases" type="text" id="name_edit" class="form-control" placeholder="Tên chức danh..." name="name">
		                            </div>
		                          </div>
		                        </div>
		                      </div>
		                      <div class="form-actions center">
		                        <a href="/ffse-fbms/ns/chuc_danh"><button type="button" class="btn btn-warning mr-1"><i class="ft-x"></i> Quay lại</button></a>
		                        <button type="submit" class="btn btn-primary"><i class="fa fa-check-square-o"></i> Thêm</button>
		                      </div>
		                    </form:form>
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