<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:url var="createlink" value="/duan/create" />
<c:url var="updatelink" value="/duan/update/" />
<c:url var="detaillink" value="/duan/detail/" />
<div class="row">
	<div class="col-xs-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">
					<spring:message code="duan.list" />
				</h4>
				<a class="heading-elements-toggle"><i
					class="fa fa-ellipsis-v font-medium-3"></i></a>
				<div class="heading-elements">
					<ul class="list-inline mb-0">
						<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
						<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
						<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
						<li><a data-action="close"><i class="ft-x"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="card-body collapse in">
				<div class="card-block card-dashboard">
					<c:if test="${message !=null }">
						<div id="message" class="alert alert-success mb-2" role="alert">
							${message }</div>
					</c:if>
					<p>
						<c:if test="${granted }">
							<a href="${createlink }"><span class="text-bold-600"><spring:message
										code="duan.add" /></span> </a>
						</c:if>
					</p>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>

									<th><spring:message code="duan.code" /></th>
									<th><spring:message code="duan.name" /></th>
									<th><spring:message code="ngonngu.action" /></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="duan" items="${list }" varStatus="count">
									<tr>
										<th scope="row">${count.count  }</th>
										<td>${duan.maDuAn }</td>
										<td>${duan.tenDuAn }</td>
										<td><a href="${detaillink }${duan.maDuAn }"
											data-toggle="tooltip" title="view!"><button type="button"
													class="btn btn-icon btn-outline-info">
													<i class="fa fa-eye"></i>
												</button></a> <c:if test="${duan.grantUpdate==1 }">
												<a href="${updatelink }${duan.maDuAn }"
													data-toggle="tooltip" title="edit!"><button
														type="button" class="btn btn-icon btn-outline-warning">
														<i class="fa fa-gavel"></i>
													</button></a>
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
			<div class="text-xs-right">
			
				<c:set var="count" scope="page" value="${total}" />
				<c:if test="${count>=3 }">
					<ul class="pagination firstLast1-links">

						<!--First-->
						<li
							class="page-item <c:set var="page" scope="page" value="${param.page}"/>  
			<c:choose>  
			    <c:when test="${page==1}">disabled</c:when>  
			    <c:when test="${page==null}">disabled</c:when>    
			</c:choose>">
							<a class="page-link" href="list?page=1">First</a>
						</li>

						<!--Arrow left-->
						<li
							class="page-item <c:choose>  
			    <c:when test="${page==1}">disabled</c:when>  
			    <c:when test="${page==null}">disabled</c:when>    
			</c:choose>">
							<a class="page-link" aria-label="Previous"
							href="<c:if test="${param.page !=null }" ><c:if test="${param.page !=1 }" >list?page=${param.page-1 }</c:if></c:if>">
								<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
						</a>
						</li>

						<!--Numbers-->
						<c:set var="page" scope="page" value="${param.page }"></c:set>

						<c:if test="${param.page != null }">
							<c:if test="${page<count }">
								<c:if test="${page==1 }">
									<c:forEach var="j" begin="1" end="3">
										<li class="page-item <c:if test="${j==1 }">active</c:if>"><a
											href="list?page=${j }" class="page-link">${j }</a></li>
									</c:forEach>
								</c:if>

								<c:if test="${page!=1 }">
									<c:forEach var="j" begin="${page-1 }" end="${page+1 }">
										<li class="page-item <c:if test="${j==page }">active</c:if>"><a
											href="list?page=${j }" class="page-link">${j }</a></li>
									</c:forEach>
								</c:if>

							</c:if>
							<c:if test="${page>=count }">
								<c:forEach var="j" begin="${page-1 }" end="${page }">
									<li class="page-item <c:if test="${j==page }">active</c:if>"><a
										href="list?page=${j }" class="page-link">${j }</a></li>
								</c:forEach>
							</c:if>

						</c:if>
						<c:if test="${param.page == null }">
							<c:forEach var="j" begin="1" end="3">
								<li class="page-item <c:if test="${j==page }">active</c:if>"><a
									href="list?page=${j }" class="page-link">${j }</a></li>
							</c:forEach>
						</c:if>


						<!--Arrow right-->
						<li
							class="page-item  <c:if test="${page==count }">disabled</c:if>">
							<a class="page-link" aria-label="Next"
							href="<c:if test="${param.page !=null }"><c:if test="${page !=count }">list?page=${page+1 }</c:if></c:if>">
								<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
						</a>
						</li>

						<!--Last-->
						<li
							class="page-item  <c:if test="${page!= null }"><c:if test="${page== count }">disabled</c:if></c:if>">
							<a class="page-link" href="list?page=${count }">Last</a>
						</li>

					</ul>
				</c:if>
				<c:if test="${total==2 }">
					<ul class="pagination firstLast1-links">

						<!--First-->
						<li
							class="page-item <c:set var="page" scope="page" value="${param.page}"/>  
			<c:choose>  
			    <c:when test="${page==1}">disabled</c:when>  
			    <c:when test="${page==null}">disabled</c:when>    
			</c:choose>">
							<a class="page-link" href="list?page=1">First</a>
						</li>

						<!--Arrow left-->
						<li
							class="page-item <c:choose>  
			    <c:when test="${page==1}">disabled</c:when>  
			    <c:when test="${page==null}">disabled</c:when>    
			</c:choose>">
							<a class="page-link" aria-label="Previous"
							href="<c:if test="${param.page !=null }" ><c:if test="${param.page !=1 }" >list?page=1</c:if></c:if>">
								<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
						</a>
						</li>

						<!--Numbers-->
						<c:set var="page" scope="page" value="${param.page }"></c:set>


						<li
							class="page <c:if test="${page==1||page==null }">active</c:if> page-item"><a
							href="?page=1" class="page-link">1</a></li>
						<li class="page <c:if test="${page==2 }">active</c:if> page-item"><a
							href="?page=2" class="page-link">2</a></li>



						<!--Arrow right-->
						<li
							class="page-item  <c:if test="${page==count }">disabled</c:if>">
							<a class="page-link" aria-label="Next"
							href="<c:if test="${param.page !=null }"><c:if test="${page !=count }">list?page=${page+1 }</c:if></c:if>">
								<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
						</a>
						</li>

						<!--Last-->
						<li
							class="page-item  <c:if test="${page!= null }"><c:if test="${page== count }">disabled</c:if></c:if>">
							<a class="page-link" href="list?page=${count }">Last</a>
						</li>

					</ul>


				</c:if>

			</div>

		</div>
	</div>

</div>

<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>