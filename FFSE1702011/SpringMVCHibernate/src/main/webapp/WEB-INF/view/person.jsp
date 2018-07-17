<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Person Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<c:if test="${empty person.tenSV}">
<h1>
	Thêm Sinh Viên
</h1>
</c:if>
<c:if test="${!empty person.tenSV}">
<h1>
	Chỉnh Sửa Sinh Viên
</h1>
</c:if>
<c:url var="addAction" value="/person/add" ></c:url>

<form:form action="${addAction}" commandName="person">
<table>
	<c:if test="${!empty person.tenSV}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="maSV">
				<spring:message text="Mã SV"/>
			</form:label>
		</td>
		<td>
			<form:input path="maSV" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="hoSV">
				<spring:message text="Họ SV"/>
			</form:label>
		</td>
		<td>
			<form:input path="hoSV" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="tenSV">
				<spring:message text="Tên SV"/>
			</form:label>
		</td>
		<td>
			<form:input path="tenSV" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="namSinh">
				<spring:message text="Năm Sinh"/>
			</form:label>
		</td>
		<td>
			<form:input path="namSinh" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="gioiTinh">
				<spring:message text="Giới Tính"/>
			</form:label>
		</td>
		<td>
			<form:radiobutton path="gioiTinh" value="Male"/>Male
			<form:radiobutton path="gioiTinh" value="Female"/>Female
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="email">
				<spring:message text="Email"/>
			</form:label>
		</td>
		<td>
			<form:input path="email" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="dienThoai">
				<spring:message text="Điện thoại"/>
			</form:label>
		</td>
		<td>
			<form:input path="dienThoai" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="diaChi">
				<spring:message text="Địa chỉ"/>
			</form:label>
		</td>
		<td>
			<form:input path="diaChi" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="maLop">
				<spring:message text="Mã Lớp"/>
			</form:label>
		</td>
		<td>
			<form:select path="maLop">
				<%-- <c:forEach var="ps" items="${person}">
					<form:option value="${ps.maLop }">${ps.tenLop }</form:option>
				</c:forEach> --%>
				<form:option value="01">FFSE1701</form:option>
			</form:select>
		</td> 
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty person.tenSV}">
				<input type="submit"
					value="<spring:message text="Sửa"/>" />
			</c:if>
			<c:if test="${empty person.tenSV}">
				<input type="submit"
					value="<spring:message text="Thêm"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Persons List</h3>
<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80">ID</th>
		<th width="120">Mã SV</th>
		<th width="120">Họ SV</th>
		<th width="120">Tên SV</th>
		<th width="120">Năm sinh</th>
		<th width="120">Giới tính</th>
		<th width="120">Email</th>
		<th width="120">Điện thoại</th>
		<th width="120">Địa chỉ</th>
		<th width="120">Mã lớp</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<td>${person.id}</td>
			<td>${person.maSV}</td>
			<td>${person.hoSV}</td>
			<td>${person.tenSV}</td>
			<td>${person.namSinh}</td>
			<td>${person.gioiTinh}</td>
			<td>${person.email}</td>
			<td>${person.dienThoai}</td>
			<td>${person.diaChi}</td>
			<td>${person.tenLop}</td>
			<td><a href="<c:url value='/edit/${person.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>