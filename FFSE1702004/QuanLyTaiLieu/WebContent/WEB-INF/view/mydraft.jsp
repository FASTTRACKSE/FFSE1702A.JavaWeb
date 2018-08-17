<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 
<div class="app-content content container-fluid">
      <div class="content-wrapper">
	<!-- code here -->      
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-2">
            <h3 class="content-header-title mb-0">my draft document</h3>
            <div class="row breadcrumbs-top">
              <div class="breadcrumb-wrapper col-xs-12">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="list">Home</a>
                  </li>
                  </li>
                  <li class="breadcrumb-item active">my draft document
                  </li>
                </ol>
              </div>
            </div>
          </div>
          <div class="content-header-right text-md-right col-md-6 col-xs-12">
            <div class="form-group"> 
              <button type="button" class="btn-icon btn btn-secondary btn-round"><i class="ft-bell"></i></button>
              <button type="button" class="btn-icon btn btn-secondary btn-round"><i class="ft-life-buoy"></i></button>
              <button type="button" class="btn-icon btn btn-secondary btn-round"><i class="ft-settings"></i></button>
            </div>
          </div>
        </div>
<div style="text-align: center;color:red ;">
<h1>my draft Document</h1>
<a href="list">back</a>
</div>
<!-- table -->
 <!-- Border color end-->
<div class="row">
	<div class="col-xs-12">
		<div class="card">
		            <div class="card-header">
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
				<div class="table-responsive">
					<table class="table mb-0">
						<thead>
							<tr class="border-bottom-active border-custom-color">
								<th>STT</th>
								<th>ten tai lieu</th>
								<th>loai danh muc</th>
								<th>phan quyen</th>
								<th>phong ban</th>
								<th>trang thai</th>
								<th>chuc nang</th>
							</tr>
						</thead>
						<tbody>
							<tr class="border-bottom-success border-custom-color">
								<td>1</td>
								<td>Doe</td>
								<td>john@example.com</td>
								<td>20</td>
								<td>John</td>
								<td>nhap</td>
								<td><a href="ddf"> edit </a><a href="ddf"> delete </a><a href="ddf"> download </a> </td>
							</tr>
							<tr class="border-bottom-info border-custom-color">
								<td>2</td>
								<td>Moe</td>
								<td>mary@example.com</td>
								<td>22</td>
								<td>John</td>
								<td>nhap</td>
								<td><a href="ddf"> edit </a><a href="ddf"> delete </a><a href="ddf"> download </a> </td>
							</tr>
							<tr class="border-bottom-teal border-bottom-darken-2 border-custom-color">
								<td>3</td>
								<td>Dooley</td>
								<td>july@example.com</td>
								<td>30</td>
								<td>John</td>
								<td>nhap</td>
								<td><a href="ddf"> edit </a><a href="ddf"> delete </a><a href="ddf"> download </a> </td>
							</tr>
							<tr class="border-bottom-pink border-bottom-darken-2 border-custom-color">
								<td>4</td>
								<td>Draker</td>
								<td>piter@example.com</td>
								<td>30</td>
								<td>John</td>
								<td>nhap</td>
								<td><a href="ddf"> edit </a><a href="ddf"> delete </a><a href="ddf"> download </a> </td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Border color end -->
<!-- code here end  -->
</div>
</div>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 
