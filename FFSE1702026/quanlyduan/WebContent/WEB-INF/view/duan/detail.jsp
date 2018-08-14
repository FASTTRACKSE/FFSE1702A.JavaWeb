<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:url var="detailrolelink" value="/duan/phancongnhiemvu/list/" />
<div class="row">
	<div class="col-xs-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">
					<spring:message code="duan.detail" />
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

					<p>
						<span class="text-bold-600">${duan.tenDuAn }</span>
					</p>
					<div class="table-responsive">
						<table class="table">

							<tbody>
								<tr>
									<th><spring:message code="duan.code" /></th>
									<td>${duan.maDuAn }</td>
								</tr>
								<tr>
									<th><spring:message code="duan.name" /></th>
									<td>${duan.tenDuAn }</td>
								</tr>
								<tr>
									<th><spring:message code="duan.business" /></th>
									<td>${duan.nghiepVu }</td>
								</tr>
								<tr>
									<th><spring:message code="duan.description" /></th>
									<td>${duan.moTaDuAn }</td>
								</tr>
								<tr>
									<th><spring:message code="duan.customer" /></th>
									<td>${duan.khachHang.tenKhachHang }</td>
								</tr>
								<tr>
									<th><spring:message code="duan.status" /></th>
									<td>${duan.tinhTrang.tenTinhTrang }</td>
								</tr>
								<tr>
									<th><spring:message code="duan.framework" /></th>
									<td><c:forEach items="${duan.framework }" var="fr">
															${fr.tenFramework  },
									</c:forEach></td>
								</tr>

								<tr>

									<th><spring:message code="duan.database" /></th>
									<td><c:forEach items="${duan.database }" var="db">
															${db.tenDatabase  },
									</c:forEach></td>
								</tr>
								<tr>
									<th><spring:message code="duan.language" /></th>
									<td><c:forEach items="${duan.ngonNgu }" var="nn">
									${nn.tenNgonNgu } ,
								</c:forEach></td>
								</tr>
								<tr>
									<th ><spring:message code="duan.employee" /></th>
									<td>
										<a href="${detailrolelink }${duan.maDuAn }"><spring:message code="duan.detailrole" /></a>
									<td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>