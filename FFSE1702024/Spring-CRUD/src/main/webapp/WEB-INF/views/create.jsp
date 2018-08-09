<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>creat</title>
<style type="text/css">
.dropdown-menu>li>a {
    display: block;
    padding: 3px 20px;
    clear: both;
    font-weight: 200;
    line-height: 1.42857143;
    color: #333;
    white-space: nowrap;
}
.button1{
    font-size:15px;
    background:orange;
    padding:0.5em 0.9em;
    border:none;
    border-radius:6px;
    transition:0.5s;
}
.button1 span{
    position:relative;
    display:inline-block;
    cursor:pointer;
    transition:0.5s;
}
.button1 span:after{
    content:"\00bb";
    position:absolute;
    right:-15px;
    transition:0.5s;
    opacity:0; 
}
.button1:hover span{
    padding-right:20px;
}
.button1:hover span:after{
    opacity:1;
    right:0;
}
</style>
</head>
<body>
  <a href="<c:url value="/list" />" >List Customer</a><br />
  <h1>Add new Customer:</h1>
  <c:url value="/add" var="add"/>
  

  
  	<div class="row justify-content-md-center">
		<div class="col-md-4">
			<h1>Thêm sinh viên</h1>
			<form:form action="${add}" method="POST"
    modelAttribute="sinhvien">


				<div class="form-group">
					<label for="msv">Mã SV</label>
					<form:input class="form-control" path="msv"/>
				</div>

                    <div class="form-group">
					<label for="hoDem">Họ </label>
					<form:input class="form-control" path="hoDem"/>
				</div>
				<div class="form-group">
					<label for="ten">Tên </label>
					<form:input class="form-control" path="ten" />
				</div>

				<div class="form-group">
					<label for="namSinh">Năm sinh</label>
					<form:input class="form-control" path="namSinh"/>
				</div>

				<div class="form-group">
					<label for="gioitinh">Giới tính: </label>
					<form:radiobuttons path="gioitinh" items="${listgender}"/>
				</div>

				<div class="form-group">
					<label for="email">Email </label>
					<form:input class="form-control" path="email" />
				</div>

				<div class="form-group">
					<label for="sdt">Điện thoại </label>
					<form:input class="form-control" path="sdt"/>
				</div>

				<div class="form-group">
					<label for="diaChi">Địa chỉ </label>
					<form:input class="form-control" path="diaChi"/>
				</div>
                
				<div class="form-group">
					<label for="lop.idLop">Lớp </label>
					<form:select class="form-control" path="lop.idLop">
						<%-- <form:option value="0" label="--- Select ---" /> --%>
						<form:options items="${listLop}" itemValue="idLop"
							itemLabel="lopHoc" />
					</form:select>
					</div>

				
				<button class="button1" type="submit"><span>Thêm</span></button>
			</form:form>
		</div>
	</div>
</body>




</html>