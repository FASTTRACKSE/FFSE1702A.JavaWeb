<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<style>
.tbl_actions a {
	color: #333;
	font-size: 13px;
	display: inline-block;
	padding: 2px 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #FFF;
}

.tbl_actions a i {
	margin-right: 3px;
}

.green {
	color: #5cb85c;
}

.blue {
	color: #337ab7;
}

.red {
	color: #d9534f;
}
</style>
<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<!-- Path -->
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Danh sách chức năng</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href='<c:url value="/home" />'>Home</a></li>
							<li class="breadcrumb-item active">Danh sách chức năng</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- End Path -->

		<div class="content-body">
			<!-- Form search -->
			<div class="row mb-2">
				<form class="col-xs-12" action='<c:url value="/chuc-nang/"></c:url>'
					method="get" enctype="multipart/form-data">
					<div class="frm-search-box form-inline pull-left">
						<label class="mr-sm-2" for="">Từ khóa: </label> <input
							class="form-control" type="text" value="" name="q"
							id="txtkeyword" placeholder="Keyword">&nbsp;
						<button type="submit" id="button" class="btn btn-success">Tìm
							kiếm</button>
					</div>
					<div class="pull-right">
						<a href="<c:url value="/chuc-nang/them-moi"></c:url>"
							class="btn btn-success button"><i class="fa fa-plus"
							aria-hidden="true"></i> Thêm mới</a>
					</div>
				</form>
			</div>
			<!-- End Form search -->

			<!-- Show message -->
			<c:if test="${messageSuccess ne null}">
				<div class="alert alert-success alert-dismissable" role="alert">
					<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					${messageSuccess}
				</div>
			</c:if>
			<c:if test="${messageError ne null}">
				<div class="alert alert-danger alert-dismissable" role="alert">
					<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					${messageError}
				</div>
			</c:if>
			<!-- End Show message -->
			
			<div class="row">
				<div class="col-xs-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Danh sách chức năng</h4>
							<a class="heading-elements-toggle"><i
								class="fa fa-ellipsis-v font-medium-3"></i></a>
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
									<thead class="bg-success">
										<tr>
											<th>STT</th>
											<th>Mã chức năng</th>
											<th>Tên chức năng</th>
											<th>Trạng thái</th>
											<th>Hành động</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty listChucNang}">
											<c:forEach var="item" items="${listChucNang}" begin="0"
												varStatus="counter">
												<tr>
													<td>${counter.index + 1}</td>
													<td>${item.ma_chuc_nang}</td>
													<td>${item.ten_chuc_nang}</td>
													<td class="tbl_actions"><a
														href="<c:url value="/chuc-nang/kich-hoat/${item.ma_chuc_nang}" />"
														title="Hiển thị"> <c:choose>
																<c:when test="${item.trang_thai == 1}">
																	<i class="fa fa-check green" aria-hidden="true"></i>Hiển thị
																</c:when>
																<c:otherwise>
																	<i class="fa fa-times red" aria-hidden="true"></i>Ẩn
																</c:otherwise>
															</c:choose>
													</a></td>
													<td class="tbl_actions"><a
														href="<c:url value="/chuc-nang/sua/${item.ma_chuc_nang}" />" title="Sửa">
															<i class="fa fa-pencil-square-o blue" aria-hidden="true"></i>Sửa
													</a> <a href="<c:url value="/chuc-nang/xoa/${item.ma_chuc_nang}" />" title="Xóa"
														onclick="return confirm('Bạn có chắc muốn xóa ?')"> <i
															class="fa fa-trash red" aria-hidden="true"></i>Delete
													</a></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
window.setTimeout(function() {
	$(".alert").fadeTo(500, 0).slideUp(500, function(){
		$(this).remove(); 
	});
}, 2500);
</script>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
