<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>

<title>Student list</title>
<style type="text/css">
.dropdown-menu>li>a {
	display: block;
	padding: 3px 20px;
	clear: both;
	font-weight: 400;
	line-height: 1.42857143;
	color: #333;
	white-space: nowrap;
}

table {
	border-collapse: collapse;
}

th {
	border: 4px solid;
	color: white;
	background-color: #61c357;
}

td {
	border: 4px solid #dddddd;
	text-align: left;
}


</style>
</head>
<body>

	
	<div class="container">
		<h1>Danh sách sinh viên</h1>
		<table
			class="table table-striped table-hover table-bordered tableUpdated">
			<tr>
				<th>STT</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Birth year</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Class</th>
				<th>Action</th>
			</tr>
			<c:forEach var="list" items="${list}" varStatus="stt">
				<tr>
					<td>${stt.count}</td>
					<td>${list.firstName}</td>
					<td>${list.lastName}</td>
					<td>${list.birthYear}</td>
					<td>${list.gender}</td>
					<td>${list.email}</td>
					<td>${list.phone}</td>
					<td>${list.address}</td>
					<td>${list.lop.name}</td>
					<td><a href="update-view/${list.id }"><i
							class="fa fa-pencil"></i></a> 
						<a href="delete/${list.id }"><i
							class="fa fa-trash"></i></a></td>
				</tr>
			</c:forEach>
		</table>
		

		<ul class="pagination pagination-circle pg-blue mb-0">
		
		<li class="page-link ${currentPage == 1 ? 'd-none' : ''}">
		<a href="/Student-SpringHibernate?page=1">&laquo;</a> 
		</li>
		
		<li class="page-link ${currentPage == 1 ? 'd-none' : ''}">	
			<a href="/Student-SpringHibernate?page=${currentPage-1}">${currentPage-1}</a>
		
		</li>
		
		<li class="page-link">
		<a href="/Student-SpringHibernate?page=${currentPage}">${currentPage}</a>
		</li>
		
		<li class="page-link ${currentPage == lastPage ? 'd-none' : ''}">
			
			<a href="/Student-SpringHibernate?page=${currentPage+1}">${currentPage+1}</a>
		
		</li>
		<li class="page-link ${currentPage == lastPage ? 'd-none' : ''}">
		<a href="/Student-SpringHibernate?page=${lastPage}">&raquo;</a>
		</li>	
	</ul>
	<br/>
		<a href="create-view"><button type="button"
				class="btn btn-success">Create</button></a>
	</div>
</body>
</html>