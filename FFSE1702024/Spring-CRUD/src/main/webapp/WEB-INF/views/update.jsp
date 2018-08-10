<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
</head>
<body>
  <a href="<c:url value="/customer-list" />">List Customer</a>
  <br />
  <h1>Edit Customer:</h1>
 
  <c:url value="/up" var="up" />
  <form:form action="${up}" method="POST" modelAttribute="sinhvien">
         <div class="form-group">
					<label for="id">ID </label>
					<form:input class="form-control" path="id" readonly="true"/>
				</div>

				<div class="form-group">
					<label for="msv">Mã SV </label>
					<form:input class="form-control" path="msv" />
				</div>


				<div class="form-group">
					<label for="hoDem">Họ</label>
					<form:input class="form-control" path="hoDem" />
				</div>

				<div class="form-group">
					<label for="ten">Tên</label>
					<form:input class="form-control" path="ten" />
				</div>
                 <div class="form-group">
					<label for="namSinh">Năm Sinh</label>
					<form:input class="form-control" path="namSinh" />
				</div>
				 <div class="form-group">
					<label for="gioitinh">Gender: </label>
					<form:radiobuttons path="gioitinh" items="${listgender }" />
				</div>
				

				<div class="form-group">
					<label for="email">Email </label>
					<form:input class="form-control" path="email" />
				</div>

				<div class="form-group">
					<label for="sdt">SDT </label>
					<form:input class="form-control" path="sdt" />
				</div>

				<div class="form-group">
					<label for="diaChi">Địa Chỉ </label>
					<form:input class="form-control" path="diaChi" />
				</div>
				<div class="form-group">
					<label for="lop.idLop">Lớp </label>
					<form:select class="form-control" path="lop.idLop">
						<%-- <form:option value="0" label="--- Select ---" /> --%>
						<form:options items="${listLop}" itemValue="idLop"
							itemLabel="lopHoc" />
					</form:select>
					</div>


    <button type="submit">Submit</button>
  </form:form>

</body>
</html>