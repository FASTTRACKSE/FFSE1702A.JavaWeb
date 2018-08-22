<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<c:url var="addStudent" value="/save"></c:url>

<form:form action="${addStudent}" modelAttribute="SinhVien">
	<table>
		<h1>Thêm Sinh Viên</h1>
		<tr>
			<td>
			<label > Họ đệm </label>
			</td>
			<td>
				<form:input path="firstname" />
			</td>
		</tr>
		<tr>
			<td><label >
				Tên
			</label></td>
			<td><form:input path="lastname" /></td>
		</tr>
		<tr>
			<td><label>
				Năm Sinh
			</label></td>
			<td><form:input path="namsinh" /></td>
		</tr>
		<tr>
			<td><label>
				gioi tinh 
			</label></td>
			<td><form:input path="gioitinh" /></td>
		</tr>
		<tr>
			<td><label>
				Email
			</label></td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td><label>
				Điện Thoại
			</label></td>
			<td><form:input path="phone" /></td>
		</tr>
		<tr>
			<td><label >
				Địa Chỉ
			</label></td>
			<td><form:input path="diachi" /></td>
		</tr>
		<tr>
			<td><label >
				Mã Lớp
			</label></td>
			<td><form:input path="malop" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Submit" /></td>
		</tr>
	</table>
</form:form>
	<a href="<c:url value = '/'/>">Danh Sách Sinh Viên</a>

</html>