<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

   <div class="app-content content container-fluid">
      <div class="content-wrapper">
         <div class="content-header row">
            <div class="content-header-left col-md-6 col-xs-12 mb-2">
               <h3 class="content-header-title mb-0">Tables styling</h3>
               <div class="row breadcrumbs-top">
                  <div class="breadcrumb-wrapper col-xs-12">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Tables</a>
                        </li>
                        <li class="breadcrumb-item active">Table Styling
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <div class="content-header-right col-md-6 col-xs-12">
               <div role="group" aria-label="Button group with nested dropdown" class="btn-group float-md-right">
                  <div role="group" class="btn-group">
                     <button id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-outline-primary dropdown-toggle dropdown-menu-right"><i class="ft-settings icon-left"></i> Settings</button>
                     <div aria-labelledby="btnGroupDrop1" class="dropdown-menu"><a href="card-bootstrap.html" class="dropdown-item">Bootstrap Cards</a><a href="component-buttons-extended.html" class="dropdown-item">Buttons Extended</a></div>
                  </div><a href="calendars-clndr.html" class="btn btn-outline-primary"><i class="ft-mail"></i></a><a href="timeline-center.html" class="btn btn-outline-primary"><i class="ft-pie-chart"></i></a>
               </div>
            </div>
         </div>
         <div class="content-body">
          
            <!-- Table header styling start -->
            <div class="row" id="header-styling">
               <div class="col-xs-12">
                  <div class="card">
                     <div class="card-header">
                        <h4 class="card-title">Table header styling</h4>
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
                        <div class="card-block card-dashboard">
                           <p class="card-text">Example of a custom table <em>header</em> styling. Table header supports default contextual and custom background colors available in <a href="colors-primary-palette.html" target="_blank">bootstrap brand colors</a>. To use bootstrap brand color in the table header, add <code>.bg-*</code> class to the header row. All border and text colors will be automatically adjusted.</p>
                        </div>
                        <div class="table-responsive">
                           <table class="table">
                              <thead class="bg-success">
                                 <tr>
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>john@example.com</td>
                                    <td>********</td>
                                 </tr>
                                 <tr>
                                    <td>Mary</td>
                                    <td>Moe</td>
                                    <td>mary@example.com</td>
                                    <td>******</td>
                                 </tr>
                                 <tr>
                                    <td>July</td>
                                    <td>Dooley</td>
                                    <td>july@example.com</td>
                                    <td>********</td>
                                 </tr>
                                 <tr>
                                    <td>July</td>
                                    <td>Dooley</td>
                                    <td>july@example.com</td>
                                    <td>***********</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        
            <!-- Table header styling end -->
        	</div>
        	</div>
        	</div>
        	</div>
         </div>
      </div>
   </div>
   <!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 