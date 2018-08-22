<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-body">
			<div class="row" id="default">
				<div class="col-xs-12">
					<a href="logwork/list"><button class="btn btn-success">Danh sách logwork</button></a>
					<a href="logwork/create"><button class="btn btn-success">Tạo logwork</button></a>

				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
