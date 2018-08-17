<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<!-- code here -->
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">add document</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="list">Home</a></li>
							<li class="breadcrumb-item"><a href="list">my document</a></li>
							<li class="breadcrumb-item active">add document</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="content-header-right text-md-right col-md-6 col-xs-12">
				<div class="form-group">
					<button type="button" class="btn-icon btn btn-secondary btn-round">
						<i class="ft-bell"></i>
					</button>
					<button type="button" class="btn-icon btn btn-secondary btn-round">
						<i class="ft-life-buoy"></i>
					</button>
					<button type="button" class="btn-icon btn btn-secondary btn-round">
						<i class="ft-settings"></i>
					</button>
				</div>
			</div>
		</div>
		<div style="text-align: center; color: red;">
			<h1>add Document</h1>
			<a href="list">back</a>
		</div>

		<!-- form nhập dữ liệu -->
		<form:form action="" method="POST" modelAttribute="document"
			class="form form-horizontal striped-rows form-bordered">
			<div class="form-body">
			
				<!-- ///////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput5">Tên Tài Liệu</label>
					<div class="col-md-9">
						<form:input path="ten_tai_lieu" class="form-control" id="projectinput5" placeholder="Tên Tài liệu" />
					</div>
				</div>
				<!-- ///////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput6">Danh Mục </label>
					<div class="col-md-9">
						<form:select path="ma_danh_muc.ma_danh_muc">
							<c:if test="${not empty listCategory}">
						<c:forEach var="category" items="${listCategory}">
							<option value="${category.ma_danh_muc} ">${classST.ten_danh_muc}</option>
						</c:forEach>
					</c:if>
						</form:select>
					</div>
				</div>
				<!-- ///////////////////// -->
				<div class="form-group row">
						<label class="col-md-3 label-control">Select File</label>
					<div class="col-md-9">
						<label id="projectinput8" class="file center-block"> 
							<input type="file" id="file"> <span class="file-custom"></span>
						</label>
					</div>
				</div>
			<!-- ///////////////////// -->	
			</div>
		</form:form>
		<!-- kết thúc nhập form dữ liệu ở đây   -->
		<div class="form-actions">
	<button type="button" class="btn btn-warning mr-1">
		<i class="ft-x"></i> Lưu vào nháp
	</button>
	<button type="button" class="btn btn-warning mr-1">
		<i class="ft-x"></i> Huỷ
	</button>
	<button type="submit" class="btn btn-primary">
		<i class="fa fa-check-square-o"></i> Gửi
	</button>
</div>
	</div>
</div>
<!-- code here end  -->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
