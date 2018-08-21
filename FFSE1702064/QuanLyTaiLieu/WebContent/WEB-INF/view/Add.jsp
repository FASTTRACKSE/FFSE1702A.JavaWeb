<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<c:url var="add" value="/save"></c:url>
<body>
	<form:form action="${add}" modelAttribute="TaiLieu" enctype="multipart/form-data">
		<table>
			<h1>Thêm Tài Liệu</h1>
			<tr>
				<td><label> Tên tài liệu </label></td>
				<td><form:input id="name" name="name" type="text" path="name" /></td>
			</tr>
			<tr>
				<td><label> Loại Tài Liệu </label></td>
				<td><form:select id="tailieu" name="tailieu" path="loaiTaiLieu">
						<form:option value="doc">DOC</form:option>
						<form:option value="png">PNG</form:option>
						<form:option value="pdf">PDF</form:option>
						<form:option value="png">PNG</form:option>
					</form:select></td>
			</tr>
			<tr>
				<td><label> Mô tả </label></td>
				<td><form:input id="name" name="name" type="text" path="moTa" /></td>
			</tr>
			<tr>
				<td><label> Phòng ban</label></td>
				<td><form:input id="phongban" name="phongban" type="text"
						path="phongBan" /></td>
			</tr>
			<tr>
				<td><label> Quyền truy cập </label></td>
				<td><form:select id="quyentruycap" name="quyentruycap"
						path="quyenTruyCap">
						<form:option value="public">Public</form:option>
						<form:option value="png">PNG</form:option>
						<form:option value="pdf">PDF</form:option>
						<form:option value="png">PNG</form:option>
					</form:select></td>
			</tr>
		</table>
		<div id="upload">
			<h1>Upload file</h1>
			<div>
				<div class="left">
					<%-- <form action="${upload}" method="post" enctype="multipart/form-data">
					Chọn file : <input type="file"  value="Upload File"  name="file" /><br /><br />
					<input name="submit" value="Upload" type="submit" />
				</form> --%>
					Chọn file :
					<form:input type="file" name="file" path="file" />
				</div>

				<div class="clr"></div>
			</div>
		</div>
		<form:input path="" value="Add" type="submit"/>
	</form:form>
</body>
</html>