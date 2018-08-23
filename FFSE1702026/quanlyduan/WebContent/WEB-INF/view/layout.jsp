<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>

<html>

<head>

<title><spring:message code="${title }" text="FFSE - Business" /></title>
</head>
<%-- <body>
	<form:form modelAttribute="ngonngu">
		<form:input path="maNgonNgu"/>
		<form:input path="tenNgonNgu"/>
	</form:form>
</body>
 --%>
<!-- phần head -->
<%@ include file="layout/head.jsp"%>
<!-- END Page Level CSS-->
</head>

<body data-open="click" data-menu="vertical-menu" data-col="2-columns"
	class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar">


	<c:import url="layout/header_navbar.jsp" />

	<%@ include file="layout/menu.jsp"%>




	<div class="app-content content container-fluid">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-xs-12 mb-2">
					<h3 class="content-header-title mb-0">
						<spring:message code="${title }" text="FFSE-Business" />
					</h3>
					<div class="row breadcrumbs-top">
						<div class="breadcrumb-wrapper col-xs-12">
							<!-- <ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Tables</a></li>
								<li class="breadcrumb-item active">Table Styling</li>
							</ol> -->
						</div>
					</div>
				</div>
				<div class="content-header-right col-md-6 col-xs-12"></div>
			</div>
			<div class="content-body">

				<!-- Phần thêm nội dung -->
				<c:import url="${view }"></c:import>
			</div>


		</div>
	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->


	<%@ include file="layout/footer.jsp"%>
	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<%@ include file="layout/script.jsp"%>

</body>

</html>









