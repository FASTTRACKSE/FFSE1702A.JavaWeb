<%@include file="admin/layout/header_view.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
	<header class="page-header"></header>
	<div class='alert alert-danger alert-dismissable' role='alert'>
		<button type='button' class='close' data-dismiss='alert'>
			<span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span>
		</button>
		<p>Lỗi, xin vui lòng thử lại.</p>
	</div>
	
	<div class="text-center"><a href="<c:url value="/users"/>" class="btn btn-primary">Về trang chủ</a></div>
</div>

<%@include file="admin/layout/footer_view.jsp"%>