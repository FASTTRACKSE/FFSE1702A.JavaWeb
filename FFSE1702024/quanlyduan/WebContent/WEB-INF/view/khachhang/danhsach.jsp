<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title"><spring:message code="khachhang.list" /></h4>
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
                    
                    <p><span class="text-bold-600"><spring:message code="khachhang.add" /></span> </p>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    
                                    <th><spring:message code="khachhang.code" /></th>
                                    <th><spring:message code="khachhang.name" /></th>
                                    <th><spring:message code="khachhang.phone" /></th>
                                    <th><spring:message code="khachhang.email" /></th>
                                    <th><spring:message code="khachhang.business" /></th>
                                    <th><spring:message code="khachhang.address" /></th>
                                    <th><spring:message code="ngonngu.action" /></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="khachhang" items="${list }" varStatus="count"   >
                                <tr>
                                    <th scope="row">${count.count  }</th>
                                    <td>${khachhang.maKhachHang }</td>
                                    <td>${khachhang.tenKhachHang }</td>
                                    <td>${khachhang.phoneNumber }</td>
                                    <td>${khachhang.email }</td>
                                    <td>${khachhang.nghiepVu }</td>
                                    <td>${khachhang.diaChi }</td>
                                    <td><a href="${detaillink }${duan.maDuAn }" data-toggle="tooltip" title="view!"><button type="button" class="btn btn-icon btn-outline-info"><i class="fa fa-eye"></i></button></a>
                                   	<a href="${updatelink }${duan.maDuAn }" data-toggle="tooltip" title="edit!"><button type="button" class="btn btn-icon btn-outline-warning"><i class="fa fa-gavel"></i></button></a>
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