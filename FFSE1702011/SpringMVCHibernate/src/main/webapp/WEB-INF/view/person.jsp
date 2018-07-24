<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title><spring:message code="label.title" text="Trang Sinh Viên" /></title>
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css"/>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<style type="text/css">
		.pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<div style="text-align: right;padding:5px;margin:5px 0px;background:#ccc;">
       <a href="?language=en">English</a>
       &nbsp;&nbsp;
       <a href="?language=vi_VN">Vietnamese</a>
</div>
<c:if test="${empty person.tenSV}">
<h1>
	<spring:message code="label.titleAddStudent" text="Thêm Sinh Viên" />
</h1>
</c:if>
<c:if test="${!empty person.tenSV}">
<h1>
	<spring:message code="label.titleEditStudent" text="Thêm Sinh Viên" />
</h1>
</c:if>
<c:url var="addAction" value="/person/add" ></c:url>

<form:form action="${addAction}" commandName="person">
<table>
	<c:if test="${!empty person.tenSV}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message code="label.id" text="ID"/>
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
				<spring:message code="label.studentCode" text="Mã SV"/>
			</form:label>
		</td>
		<td>
			<form:input path="maSV" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="hoSV">
				<spring:message code="label.studentFirstName" text="Họ SV"/>
			</form:label>
		</td>
		<td>
			<form:input path="hoSV" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="tenSV">
				<spring:message code="label.studentLastName" text="Tên SV"/>
			</form:label>
		</td>
		<td>
			<form:input path="tenSV" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="namSinh">
				<spring:message code="label.birth" text="Năm Sinh"/>
			</form:label>
		</td>
		<td>
			<form:input path="namSinh" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="gioiTinh">
				<spring:message code="label.sex" text="Giới Tính"/>
			</form:label>
		</td>
		<td>
			<form:radiobutton path="gioiTinh" value="Male"/><spring:message code="label.male" text="Male"/>
			<form:radiobutton path="gioiTinh" value="Female"/><spring:message code="label.female" text="Female"/>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="email">
				<spring:message code="label.email" text="Email"/>
			</form:label>
		</td>
		<td>
			<form:input path="email" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="dienThoai">
				<spring:message code="label.phone" text="Điện thoại"/>
			</form:label>
		</td>
		<td>
			<form:input path="dienThoai" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="diaChi">
				<spring:message code="label.address" text="Địa chỉ"/>
			</form:label>
		</td>
		<td>
			<form:input path="diaChi" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="maLop">
				<spring:message code="label.classCode" text="Mã Lớp"/>
			</form:label>
		</td>
		<td>
			<form:select path="maLop">
				<form:option value="01">FFSE1701</form:option>
			</form:select>
		</td> 
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty person.tenSV}">
				<input type="submit"
					value="<spring:message code="label.btnEdit" text="Sửa"/>" />
			</c:if>
			<c:if test="${empty person.tenSV}">
				<input type="submit"
					value="<spring:message code="label.btnAdd"  text="Thêm"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<div class="container">
<h3><spring:message code="label.titleList"  text="Danh sách sinh viên"/></h3>
<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80"><spring:message code="label.id" text="ID"/></th>
		<th width="120"><spring:message code="label.studentCode" text="Mã SV"/></th>
		<th width="60"><spring:message code="label.studentFirstName" text="Họ SV"/></th>
		<th width="60"><spring:message code="label.studentLastName" text="Tên SV"/></th>
		<th width="120"><spring:message code="label.birth" text="Năm Sinh"/></th>
		<th width="120"><spring:message code="label.sex" text="Giới Tính"/></th>
		<th width="120"><spring:message code="label.email" text="Email"/></th>
		<th width="120"><spring:message code="label.phone" text="Điện thoại"/></th>
		<th width="120"><spring:message code="label.address" text="Địa chỉ"/></th>
		<th width="120"><spring:message code="label.classCode" text="Mã Lớp"/></th>
		<th width="60"><spring:message code="label.edit" text="Sửa"/></th>
		<th width="60"><spring:message code="label.del" text="Xoá"/></th>
	</tr>
	<c:forEach items="${listPersons}" var="person" varStatus="itr">
		<tr>
			<td>${offset + itr.index +1 }</td>
			<td>${person.maSV}</td>
			<td>${person.hoSV}</td>
			<td>${person.tenSV}</td>
			<td>${person.namSinh}</td>
			<td>${person.gioiTinh}</td>
			<td>${person.email}</td>
			<td>${person.dienThoai}</td>
			<td>${person.diaChi}</td>
			<td>${person.maLop}</td>
			<td><a href="<c:url value='/edit/${person.id}' />" ><spring:message code="label.edit" text="Sửa"/></a></td>
			<td><a href="<c:url value='/remove/${person.id}' />" ><spring:message code="label.del" text="Xoá"/></a></td>
		</tr>
	</c:forEach>
	</table>
	<tag:paginate max="2" offset="${offset}" count="${count}" uri="/persons" next="&raquo;" previous="&laquo;"/>
</c:if>
</div>
</body>
</html>