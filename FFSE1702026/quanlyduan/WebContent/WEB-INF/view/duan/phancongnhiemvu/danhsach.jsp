<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:url var="createlinkphancong" value="/duan/phancongnhiemvu/create/" />
<c:url var="updatelinkphancong" value="/duan/phancongnhiemvu/update/" />

<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title"><spring:message code="duan.list" /></h4>
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
                    <p><a href="${createlinkphancong }${duan.maDuAn}"><span class="text-bold-600"><spring:message code="quanlyduan.addrole" /></span> </a></p>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>   
                                    <th><spring:message code="duan.code" /></th>
                                    <th><spring:message code="duan.name" /></th>
                                    <th><spring:message code="duan.employee" /></th>
                                    <th><spring:message code="duan.vaitro" /></th>
                                    
                                    <th><spring:message code="ngonngu.action" /></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:set var="maDuAn" value="${duan.maDuAn }" />
                            <c:set var="tenDuAn" value="${duan.tenDuAn }" />
                            <c:forEach var="nv" items="${duan.hoSoNhanVien }" varStatus="count"   >
                                <tr>
                                    <th scope="row">${count.count  }</th>
                                    <td> ${maDuAn }  </td>
                                    <td> ${tenDuAn } </td>
                                    <td> ${nv.ten }</td>
                                    <td><c:forEach var="vaitro" items="${nv.vaiTro }" >
                                    	${vaitro.tenVaiTro },
                                    </c:forEach></td>
                                   	<td>
                                   	<a href="${updatelinkphancong }${maDuAn }/${nv.maNhanVien}" data-toggle="tooltip" title="edit!"><button type="button" class="btn btn-icon btn-outline-warning"><i class="fa fa-gavel"></i></button></a>
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