<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<style>
.list-child{
	padding-left: 10px;
}
.list-child label{
	margin-bottom: 0;
}
ul.list-child input[type="checkbox"], ul.list-child input[type="radio"] {
    margin-right: 6px;
}
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<!-- Path -->
		<div class="content-header row">
			<div class="content-header-left col-md-12 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Thêm mới chức năng phòng ban</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href='<c:url value="/home" />'>Home</a></li>
							<li class="breadcrumb-item"><a href='<c:url value="/chuc-nang-phong-ban/" />'>Danh sách chức năng phòng ban</a></li>
							<li class="breadcrumb-item active">Thêm mới chức năng phòng ban</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- End Path -->

		<div class="content-body">
			<div class="main-content">
				<div class="row">
					<div class="card">
						<div class="error"><c:if test="${error}"></c:if></div>
						<form style="overflow: hidden; padding-top: 15px;" method="POST" action="">
							<div class="form-group col-sm-6">
							  	<label>Mã phòng ban</label>
							  	<input class="form-control" name="_maPhongBan" placeholder="Mã phòng ban" required="required"/>
							</div>
							<fieldset class="fieldset_roles col-sm-12">
								<legend>Chọn quyền:</legend>
								
									<c:forEach items="${listChucNang}" var="item" begin="0" varStatus="counter">
										<c:if test="${counter.index % 5 == 0}">
											<div class="col-md-3 col-sm-4 col-xs-6">
											<ul class="list-child">
										</c:if>
										<li class="checkbox">
											<label><input type="checkbox" name="roles" value="${item.ma_chuc_nang}">${item.ten_chuc_nang}</label>
										</li>
										<c:if test="${(counter.index+1) % 5 == 0}">
											</ul>
											</div>
										</c:if>
									</c:forEach>
								</ul>
							</fieldset>
							<div class="col-sm-12 form-group text-center">
								<button type="submit" class="btn btn-success">Lưu thông tin</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
