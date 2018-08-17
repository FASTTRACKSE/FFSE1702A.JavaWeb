Skip to content
Features
Business
Explore
Marketplace
Pricing

Search

Sign in or Sign up
2 0 0 FASTTRACKSE/FFSE1702A.JavaWeb
 Code  Issues 0  Pull requests 0  Projects 0  Insights
Join GitHub today
GitHub is home to over 28 million developers working together to host and review code, manage projects, and build software together.

FFSE1702A.JavaWeb/FFSE1702026/quanlyduan/WebContent/WEB-INF/view/khachhang/danhsach.jsp
9dad5cb  an hour ago
@ffse1702026 ffse1702026 update
     
123 lines (120 sloc)  5.38 KB
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:url var="createlink" value="/doitac/create" />
<c:url var="updatelink" value="/doitac/update/" />
<c:url var="deletelink" value="/doitac/delete/" />
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title"><spring:message code="doitac.list" /></h4>
                <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
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
                    <!-- phần view flashmessage -->
					<c:if test="${message !=null }">
						<div id="message" class="alert alert-success mb-2" role="alert">
							${message }</div>
					</c:if>
					<!-- end flash message -->
                     <p><a href="${createlink }"><span class="text-bold-600"><spring:message code="doitac.add" /></span> </a></p>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    
                                    <th><spring:message code="doitac.code" /></th>
                                    <th><spring:message code="doitac.name" /></th>
                                    <th><spring:message code="doitac.phone" /></th>
                                    <th><spring:message code="doitac.email" /></th>
                                    <th><spring:message code="doitac.address" /></th>
                                    <th><spring:message code="ngonngu.action" /></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="doitac" items="${list }" varStatus="count"   >
                                <tr>
                                    <th scope="row">${count.count  }</th>
                                    <td>${doitac.maDoiTac }</td>
                                    <td>${doitac.tenDoiTac }</td>
                                    <td>${doitac.phoneNumber }</td>
                                    <td>${doitac.email }</td>
                                    
                                    <td>${doitac.diaChi }</td>
                                    <td><a href="${updatelink }${doitac.maDoiTac }" data-toggle="tooltip" title="edit!"><button type="button" class="btn btn-icon btn-outline-warning"><i class="fa fa-gavel"></i></button></a>
                                    	<button type="button"
												class="btn btn-outline-danger btn-icon checkid"
												data-toggle="modal"
												data-link="${deletelink }${doitac.maDoiTac }"
												data-target="#danger">
												<i class="fa fa-trash-o"></i>
											</button>
                                    </td>                       
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
				 <c:forEach var="doitac" items="${list }" varStatus="count"   >
				<a id="deletemodal" href="${deletelink }${doitac.maDoiTac }"><button type="button"
						class="btn btn-outline-danger">
						<spring:message code="btn.yes" />
						
					</button></a>
					</c:forEach>
			</div>
		</div>
	</div>
</div>
