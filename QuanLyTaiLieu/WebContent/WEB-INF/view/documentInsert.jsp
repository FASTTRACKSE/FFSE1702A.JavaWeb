<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<!-- code here -->
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">
					<fmt:message key="label.title" />
				</h3>
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
		</div>
		<div style="text-align: center; color: red;">
			<h1>add Document</h1>
			<a href="list">back</a>
		</div>
		<!-- ================-- form nhập dữ liệu --====================== -->
		<!--  
		<c:if test="${document != null}">
			<form:form action="documentSave" method="POST"
			modelAttribute="document"
			class="form form-horizontal striped-rows form-bordered"></form:form>
		</c:if>
		<c:if test="${document == null}">
			<form:form action="documentSave/draft" method="POST"
			modelAttribute="document"
			class="form form-horizontal striped-rows form-bordered"></form:form>
		</c:if>
		-->
		<form:form action="documentSaveDraft" method="POST"
			modelAttribute="document" enctype="multipart/form-data"
			class="form form-horizontal striped-rows form-bordered">
			<div class="form-body">
				<!-- ///////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput5"><fmt:message
							key="label.nameDocument" /></label>
					<div class="col-md-9">
						<form:input path="ten_tai_lieu" class="form-control"
							id="projectinput5" placeholder="Tên Tài liệu" />
					</div>
				</div>
				<!-- //////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput6">Danh
						Mục </label>
					<div class="col-md-9">
						<form:select path="ma_danh_muc.ma_danh_muc">
							<c:forEach var="category" items="${listCategory}">
								<form:option value="${category.ma_danh_muc}"
									label="${category.ten_danh_muc}" />
							</c:forEach>
						</form:select>
					</div>
				</div>
				<!-- ///////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput6">Mô
						Tả </label>
					<div class="col-md-9">
						<form:textarea path="mo_ta" class="form-control"
							id="basicTextarea"></form:textarea>
					</div>
				</div>
				<!-- ///////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput6">Quyền
						truy cập </label>
					<div class="col-md-9">
						<form:select path="quyen_truy_cap">
							<option value="all">all</option>
							<option value="ffse1702">ffse1702</option>
							<option value="ffse1703">ffse1703</option>
							<option value="ffse1703">ffse1704</option>
						</form:select>
					</div>
				</div>
				<!-- ///////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control">Select File</label>
					<div class="col-md-9">
						<%-- <form action="${upload}" method="post" enctype="multipart/form-data">
					Chọn file : <input type="file"  value="Upload File"  name="file" /><br /><br />
				</form> --%>
						Chọn file :
						<form:input type="file" path="file" />
					</div>
				</div>
				<!-- ///////////////////// -->
				<div class="form-actions">
					<button type="submit" class="btn btn-success mr-1">Gửi</button>
					<a href="list" class="btn btn-danger mr-1">Huỷ</a>
				</div>
			</div>
		</form:form>
		<!-- ============= kết thúc nhập form dữ liệu ở đây =============  -->
	</div>
</div>
<!-- code here end  -->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
