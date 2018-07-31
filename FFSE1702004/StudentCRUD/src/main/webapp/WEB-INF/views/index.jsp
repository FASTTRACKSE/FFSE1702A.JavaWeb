<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Quản lý sinh viên</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
  rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<style>
table, th, td {
  border: 1px solid black;
}
td {
  padding-right: 30px;
}
</style>
</head>
<body style="margin:100px;">
  <c:url value="/studentInsert" var="urlInsert"/>
  <c:url value="/studentView/" var="urlView"/>
  <c:url value="/studentUpdate/" var="urlUpdate"/>
  <c:url value="/studentDelete/" var="urlDelete"/>
  <h1 style="text-align: center ;color:red ">List student :</h1>
  <div style="text-align: center ">
  <a href="${urlInsert}" > Add Student</a>
  </div>
  <br />
  <br />
  <table class="table table-hover">
    <tr>
      <th>Id</th>
      <th>id student</th>
      <th>first name</th>
      <th>surname</th>
      <th>birthday</th>
      <th>gender</th>
      <th>email</th>
      <th>phone</th>
      <th>address</th>
      <th>class</th> 
      <th>View</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <c:if test="${not empty listStudent}">
      <c:forEach var="student" items="${listStudent}">
        <tr style="border: 1px black solid">
          <td>${student.id}</td>
          <td>${student.id_st}</td> 
          <td>${student.firstname}</td>
          <td>${student.surname}</td>
          <td>${student.birthday}</td>
          <td>${student.gender}</td>
          <td>${student.email}</td>
          <td>${student.phone}</td>
          <td>${student.address}</td>
          <td>${student.idClass.nameClass}</td>
          <td> <a href="${urlView}${student.id}"   class="btn btn-success" >View</a></td>
          <td> <a href="${urlUpdate}${student.id}" class="btn btn-success" >Edit</a></td>
          <td> <a href="${urlDelete}${student.id}" class="btn btn-success" >Delete</a></td>
        </tr>
      </c:forEach>
    </c:if>
  </table>
  <!-- pagitation -->
  <ul class="pagination pagination-circle pg-blue mb-0" style="margin-left:58px;">
		<c:if test="${currentPage != 1}">
			<li class="page-link ${currentPage == 1 ? 'd-none' : ''}"><a
				class="page"
				href="<%=request.getContextPath()%>/index?page=${currentPage-1}">&laquo;</a>
			</li>
		</c:if>
		<li class="page-link"><a
			href="<%=request.getContextPath()%>/index?page=${currentPage}">${currentPage}</a>
		</li>
		<c:if test="${currentPage != lastPage}">
			<li class="page-link ${currentPage == lastPage ? 'd-none' : ''}">
				<a
				href="<%=request.getContextPath()%>/index?page=${currentPage+1}">${currentPage+1}</a>
			</li>
		</c:if>
		<c:if test="${lastPage - currentPage >=2}">
			<li class="page-link ${currentPage == lastPage ? 'd-none' : ''}">
				<a
				href="<%=request.getContextPath()%>/index?page=${currentPage+2}">${currentPage+2}</a>
		</c:if>
		<li class="page-link ${currentPage == lastPage ? 'd-none' : ''}">
			<a href="<%=request.getContextPath()%>/index?page=${lastPage}">&raquo;</a>
		</li>
	</ul>
</body>
</html>