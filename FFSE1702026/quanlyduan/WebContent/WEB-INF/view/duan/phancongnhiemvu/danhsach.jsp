<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:url var="createlinkphancong" value="/duan/phancongnhiemvu/create/" />
<c:url var="updatelinkphancong" value="/duan/phancongnhiemvu/update/" />
<c:url var="deletelinkphancong" value="/duan/phancongnhiemvu/delete/" />

<div class="row">
	<div class="col-xs-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">
					<spring:message code="duan.phancongduan.list" />
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
							<a href="${createlinkphancong }${duan.maDuAn}"><span
								class="text-bold-600"><spring:message
										code="quanlyduan.addrole" /></span> </a>
						</c:if>
					</p>

					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th><spring:message code="duan.code" /></th>
									<th><spring:message code="duan.name" /></th>
									<th><spring:message code="duan.employee" /></th>
									<th><spring:message code="duan.vaitro" /></th>
									<c:if test="${granted }">
									<th><spring:message code="ngonngu.action" /></th>
									</c:if>
								</tr>
							</thead>
							<tbody>
								<c:set var="maDuAn" value="${duan.maDuAn }" />
								<c:set var="tenDuAn" value="${duan.tenDuAn }" />
								<c:forEach var="nv" items="${nhiemvu }" varStatus="count">
									<tr>
										<th scope="row">${count.count  }</th>
										<td>${nv.maDuAn }</td>
										<td>${tenDuAn }</td>
										<td><c:forEach var="nhanVien"
												items="${duan.hoSoNhanVien }">
												<c:if test="${nhanVien.maNhanVien==nv.maNhanVien }">${nhanVien.hoDem }${nhanVien.ten }</c:if>

											</c:forEach></td>
										<td><c:forEach var="nhanVien"
												items="${duan.hoSoNhanVien }">
												<c:if test="${nhanVien.maNhanVien==nv.maNhanVien }">
													<c:forEach var="vaitro" items="${nhanVien.vaiTro }">
														<c:if test="${vaitro.maVaiTro==nv.maVaiTro }">${vaitro.tenVaiTro }</c:if>
													</c:forEach>
												</c:if>

											</c:forEach></td>
										<c:if test="${granted }">
											<td><a
												href="${updatelinkphancong }${nv.maDuAn }/${nv.maNhanVien}/${nv.maVaiTro}"
												data-toggle="tooltip" title="edit!"><button
														type="button" class="btn btn-icon btn-outline-warning">
														<i class="fa fa-gavel"></i>
													</button></a>
												<button type="button"
													class="btn btn-outline-danger btn-icon checkid"
													data-toggle="modal"
													data-link="${deletelinkphancong }${nv.maDuAn }/${nv.maNhanVien}/${nv.maVaiTro}"
													data-target="#danger">
													<i class="fa fa-trash-o"></i>
												</button></td>
										</c:if>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
<script>
	$(document).ready(function() {
		$('.checkid').click(function() {
			var link = $(this).attr("data-link");
			$("#deletemodal").attr("href", link);
		});
	});
</script>
<!-- modal -->
<div class="modal fade text-xs-left" id="danger" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel10" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-danger white">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel10">
					<spring:message code="database.delete" />
				</h4>
			</div>
			<div class="modal-body">
				<h5>
					<spring:message code="database.confirm" />
				</h5>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn grey btn-outline-secondary"
					data-dismiss="modal">
					<spring:message code="btn.no" />
				</button>
				<a id="deletemodal" href="${deletelinkphancong }"><button
						type="button" class="btn btn-outline-danger">
						<spring:message code="btn.yes" />
					</button></a>
			</div>
		</div>
	</div>
</div>