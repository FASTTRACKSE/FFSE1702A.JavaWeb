<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Thêm mới khách hàng</h2>
		<form class="form-horizontal" action="/CRUD/khachhang/add.update?action=add"
			method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Mã Khách
					Hàng:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Mã Khách Hàng"
						name="maKH">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Tên Khách
					Hàng:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Tên Khách Hàng" name="name">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="sdt">Số Điện
					Thoại:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Số Điện Thoại"
						name="phone">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Email:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Email"
						name="email">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Quận:</label>
				<div class="col-sm-10">
					<select class="form-control" name="quan">
						<option value="Hải Châu">Hải Châu</option>
						<option value="Liên Chiểu">Liên Chiểu</option>
						<option value="Sơn Trà">Sơn Trà</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-success">Add</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>