<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<!-- code here -->
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0"><spring:message code="label.menu.mydraft"/></h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/index">Home</a></li>
							<li class="breadcrumb-item active"><spring:message code="label.menu.mydraft"/></li>
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
			<h1><spring:message code="label.menu.mydraft"/></h1>
		</div>
		<!-- Border color end-->
		<div class="row">
			<div class="col-xs-12">
				<div class="card">
					<div class="card-header">
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
								<thead>
									<tr class="border-bottom-active border-custom-color">
										<th>STT</th>
										<th><spring:message code="label.nameDocument"/></th>
										<th><spring:message code="label.describe"/></th>
										<th><spring:message code="label.category"/></th>
										<th><spring:message code="label.status"/></th>
										<th><spring:message code="label.access"/></th>
										<th><spring:message code="label.function"/></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty listDraft}">
										<c:forEach var="document" items="${listDraft}" varStatus="stt">
											<tr class="border-bottom-success border-custom-color">
												<td>${stt.count}</td>
												<td><img src="<c:url value="${document.ma_icon.hinh_anh}"/>" width="20" height="20"> ${document.ten_tai_lieu}</td>
												<td>${document.mo_ta}</td>
												<td>${document.ma_danh_muc.ten_danh_muc}</td>
												<td>${document.ma_trang_thai.ten_trang_thai}</td>
												<td>${document.quyen_truy_cap}</td>
												<td><a href="documentDelete/${document.id}" class="btn-warning btn"><spring:message code="label.delete"/></a><a href="documentEdit/${document.id}" class="btn-warning btn" > <spring:message code="label.edit"/> </a></td>
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
		<!-- Border color end -->
	</div>
</div>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
