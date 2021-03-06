<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
   <meta name="description" content="Stack admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
   <meta name="keywords" content="admin template, stack admin template, dashboard template, flat admin template, responsive admin template, web app">
   <meta name="author" content="PIXINVENT">
   <title>FastTrackSE - The Business Management System - Login</title>
   <link rel="apple-touch-icon" href="<c:url value="/resources/images/ico/apple-icon-120.png "/>">
   <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/images/ico/favicon.ico "/>">
   <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet" />
   <!-- BEGIN VENDOR CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/feather/style.min.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome/css/font-awesome.min.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/flag-icon-css/css/flag-icon.min.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/extensions/pace.css "/>">
   <!-- END VENDOR CSS-->
   <!-- BEGIN STACK CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-extended.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/app.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/colors.css "/>">
   <!-- END STACK CSS-->
   <!-- BEGIN Page Level CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/menu/menu-types/vertical-menu.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/menu/menu-types/vertical-overlay-menu.css "/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/colors/palette-gradient.css "/>">
   <!-- END Page Level CSS-->
   <link rel="stylesheet" type="text/javascript" href="<c:url value="/resources/js/jquery.js"/>">
   <link rel="stylesheet" type="text/javascript" href="<c:url value="/resources/js/bootstrap.min.js"/>">

</head>

<body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar">

   <!-- - var navbarShadow = true-->
   <!-- navbar-fixed-top-->
   <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-light bg-gradient-x-grey-blue">
      <div class="navbar-wrapper">
         <div class="navbar-header">
            <ul class="nav navbar-nav">
               <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="ft-menu font-large-1"></i></a></li>
               <li class="nav-item"><a href="<%=request.getContextPath()%>/index" class="navbar-brand"><img alt="stack admin logo" src="   <c:url value="/resources/images/logo/stack-logo.png "/>" class="brand-logo" />
                     <h2 class="brand-text">Stack</h2></a></li>
               <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="fa fa-ellipsis-v"></i></a></li>
            </ul>
         </div>
         <div class="navbar-container content container-fluid">
            <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
               <ul class="nav navbar-nav">
                  <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="ft-menu"></i></a></li>
                  <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-link-expand"><i class="ficon ft-maximize"></i></a></li>
               </ul>
               <ul class="nav navbar-nav float-xs-right">
                  <li class="dropdown dropdown-language nav-item">
                  <a id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle nav-link"><spring:message code="label.selectlanguages"/> <span class="selected-language" >  </span> </a>                    
                     <div aria-labelledby="dropdown-flag" class="dropdown-menu"> <a href="${baseURL}?theLocale=en_US" class="dropdown-item"> <i class="flag-icon flag-icon-gb"></i> English</a> <a href="${baseURL}?theLocale=vi_VN" class="dropdown-item"><i class="flag-icon flag-icon-vn"></i> Vietnamese </a></div>
                  </li>
                  <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online">  <img src=" <c:url value="resources/images/portrait/small/avatar-s-1.png"/> " alt="avatar"><i></i></span><span class="user-name">admin</span></a>
                     <div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="ft-user"></i> Edit Profile</a><a href="#" class="dropdown-item"><i class="ft-mail"></i> My Inbox</a><a href="#" class="dropdown-item"><i class="ft-check-square"></i> Task</a><a href="#" class="dropdown-item"><i class="ft-message-square"></i> Chats</a>
                        <div class="dropdown-divider"></div><a href="#" class="dropdown-item"><i class="ft-power"></i> Logout</a>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </div>
   </nav>
   <!-- ////////////////////////////////////////////////////////////////////////////-->

   <div data-scroll-to-active="true" class="main-menu menu-fixed menu-light menu-accordion menu-shadow">
      <div class="main-menu-content">
         <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
            <li class=" navigation-header"><span>General</span><i data-toggle="tooltip" data-placement="right" data-original-title="General" class=" ft-minus"></i>
            </li>
            <li class=" nav-item"><a href="<%=request.getContextPath()%>/index"><i class="ft-home"></i><span data-i18n="" class="menu-title">Dashboard</span></a>
               <ul class="menu-content">
                  <li><a href="<%=request.getContextPath()%>/index" class="menu-item"><spring:message code="label.menu.mydocument"/></a>
                  </li>
                  <li><a href="<%=request.getContextPath()%>/myDraft" class="menu-item"><spring:message code="label.menu.mydraft"/> </a>
                  </li>
                  <li><a href="<%=request.getContextPath()%>/pendingApprove" class="menu-item"><spring:message code="label.menu.pendingapprove"/></a>
                  </li>
                  <li><a href="<%=request.getContextPath()%>/documentPublic" class="menu-item"><spring:message code="label.menu.documentpublic"/></a>
                  </li>
               </ul>
            </li>
         </ul>
      </div>
   </div>