<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<!-- Path -->
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Sửa quyền chức năng</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href='<c:url value="/home" />'>Home</a></li>
							<li class="breadcrumb-item"><a
								href='<c:url value="/function-role/" />'>Danh sách quyền
									chức năng</a></li>
							<li class="breadcrumb-item active">Sửa quyền chức năng</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- End Path -->

		<div class="content-body">
			<div class="main-content">
				<div class="row">
					<c:url var="post_url" value="/function-role/sua/luu" />
					<form:form method="POST" modelAttribute="functionRole"
						action="${post_url}">
						<form:input type="hidden" path="id" style="display:none"
							value="${functionRole.id}" />
						<div class="form-group col-sm-6">
							<label>Mã phòng ban</label> <select name='maPhongBan'
								class="form-control">
								<c:forEach items="${listPhongBan}" var="item">
									<option value="${item.maPhongBan}"
										<c:if test="${item.maPhongBan == functionRole.maPhongBan}">selected="selected"</c:if>>${item.tenPhongBan}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group col-sm-6">
							<label>Mã chức danh</label> <select name='maChucDanh'
								class="form-control">
								<c:forEach items="${listChucDanh}" var="item">
									<option value="${item.maChucDanh}"
										<c:if test="${item.maChucDanh == functionRole.maChucDanh}">selected="selected"</c:if>>${item.tenChucDanh}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group col-sm-6">
							<label>Mã chức năng</label> <select name='roleID'
								class="form-control">
								<c:forEach items="${listChucNang}" var="item">
									<option value="${item.ma_chuc_nang}" <c:if test="${item.ma_chuc_nang == functionRole.roleID}">selected="selected"</c:if>>${item.ten_chuc_nang}</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-sm-12 text-center">
							<button type="submit" class="btn btn-success">Lưu thông
								tin</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
