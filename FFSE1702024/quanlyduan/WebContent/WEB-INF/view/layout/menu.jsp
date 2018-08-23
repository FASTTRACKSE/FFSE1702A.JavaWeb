<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:url var="duanlink" value="/duan/list"/>
<c:url var="databaselink" value="/database/list"/>
<c:url var="ngonngulink" value="/ngonngu/list"/>
<c:url var="frameworklink" value="/framework/list"/>
<c:url var="customerlink" value="/khachhang/list"/>
<c:url var="vendorlink" value="/doitac/list"/>
<c:url var="domainlink" value="/nghiepvu/list"/>
<div data-scroll-to-active="true" class="main-menu menu-fixed menu-light menu-accordion menu-shadow">
      <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
          <li class=" navigation-header"><span><spring:message code="quanlyduan.titlemenu" /></span><i data-toggle="tooltip" data-placement="right" data-original-title="General" class=" ft-minus"></i>
          </li>
          <li class=" nav-item"><a href="${duan }"><i class="ft-home"></i><span data-i18n="" class="menu-title"><spring:message code="quanlyduan.titlemenu" /></span></a>
            <ul class="menu-content">
              <li><a href="${duanlink }" class="menu-item"><spring:message code="quanlyduan.duanmenu" /></a>
              </li>
              <li><a href="${databaselink }" class="menu-item"><spring:message code="quanlyduan.databasemenu" /></a>
              </li>
              <li><a href="${ngonngulink }" class="menu-item"><spring:message code="quanlyduan.language" /></a>
              </li>
              <li><a href="${frameworklink }" class="menu-item"><spring:message code="quanlyduan.frameworkmenu" /></a>
              </li>
              <li><a href="${customerlink }" class="menu-item"><spring:message code="quanlyduan.customer" /></a>
              </li>
              <li><a href="${vendorlink }" class="menu-item"><spring:message code="quanlyduan.vendor" /></a>
              </li>
              <li><a href="${domainlink }" class="menu-item"><spring:message code="quanlyduan.domain" /></a>
              </li>
            </ul>
          </li>
          
        </ul>
      </div>
    </div>