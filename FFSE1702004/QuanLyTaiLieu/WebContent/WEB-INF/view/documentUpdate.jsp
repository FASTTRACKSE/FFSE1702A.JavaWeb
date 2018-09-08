<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<!-- code here -->
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">
					<spring:message code="label.insert.title" />
				</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="<%=request.getContextPath()%>/index">Home</a></li>
							<li class="breadcrumb-item"><a
								href="<%=request.getContextPath()%>/index"><spring:message
										code="label.documentupdate" /></a></li>
							<li class="breadcrumb-item active"><spring:message
									code="label.update.title" /></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<div style="text-align: center; color: red;">
			<h1>
				<spring:message code="label.update.title" />
			</h1>
			<a href="<%=request.getContextPath()%>/index"><spring:message
					code="label.back" /></a>
		</div>
		<!-- ================-- form nhập dữ liệu --====================== -->

		<form:form action="" method="POST" modelAttribute="document"
			enctype="multipart/form-data"
			class="form form-horizontal striped-rows form-bordered">

			<div class="form-body">
				<!-- ///////////////////// -->
				<c:if test="${not empty id}">
					<form:hidden path="id" class="form-control" id="projectinput5"
						value="${document.id}" />
				</c:if>
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput5">
						<spring:message code="label.nameDocument" />
					</label>
					<div class="col-md-9">
						<form:input path="ten_tai_lieu" class="form-control"
							id="projectinput5" value="${document.ten_tai_lieu}" />
					</div>
				</div>
				<!-- //////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput6">
						<spring:message code="label.category" />
					</label>
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
					<label class="col-md-3 label-control" for="projectinput6">
						<spring:message code="label.describe" />
					</label>
					<div class="col-md-9">
						<form:textarea path="mo_ta" class="form-control"
							id="basicTextarea"></form:textarea>
					</div>
				</div>
				<!-- ///////////////////// -->
				<div class="form-group row">
					<label class="col-md-3 label-control" for="projectinput6">
						<spring:message code="label.access" />
					</label>
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

				<div class="form-actions">
					<button formaction="<%=request.getContextPath()%>/documentSave"
						class="btn btn-success mr-1">
						<spring:message code="label.submit" />
					</button>
					<button
						formaction="<%=request.getContextPath()%>/documentSave/draft"
						class="btn btn-info mr-1">
						<spring:message code="label.draft" />
					</button>
					<a href="<%=request.getContextPath()%>/index"
						class="btn btn-danger mr-1"><spring:message
							code="label.cancel" /></a>
				</div>
			</div>
		</form:form>
		<!-- ============= kết thúc nhập form dữ liệu ở đây =============  -->
	</div>
</div>
<!-- code here end  -->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
