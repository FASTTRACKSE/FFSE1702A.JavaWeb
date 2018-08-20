<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-body">
			<div class="row" id="default">
				<div class="col-xs-12">
					<form:form action="" method="post"
						modelAttribute="logWork">
						<div class="form-group">
							<label for="nameLogwork">Tên công việc</label> <input
								class="form-control" path="tenCongViec"
								placeholder="Nhập tên công việc">
						</div>
						<div class="form-group">
							<label for="description">Mô tả</label> <input type="text"
								class="form-control" path="moTa"
								placeholder="Nhập mô tả công việc">
						</div>
						<div class="form-group">
							<label for="startDate">Ngày bắt đầu</label> <input type="text"
								class="form-control" path="thoiGianBatDau">
						</div>
						<div class="form-group">
							<label for="endDate">Ngày kết thúc</label> <input type="text"
								class="form-control" path="thoiGianKetThuc">
						</div>
						<div class="form-group">
							<label for="estimateTime">Thời gian ước tính</label> <input
								type="text" class="form-control" path="thoiGianUocLuong">
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form:form>
					
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
