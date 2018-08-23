<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
   <link rel="apple-touch-icon" href="<c:url value="/resources/images/ico/apple-icon-120.png"/>">
   <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/images/ico/favicon.ico"/>">
   <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet" />
   <!-- BEGIN VENDOR CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/feather/style.min.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome/css/font-awesome.min.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/flag-icon-css/css/flag-icon.min.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/extensions/pace.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/tables/datatable/dataTables.bootstrap4.min.css"/>">
   <!-- END VENDOR CSS-->
   <!-- BEGIN STACK CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-extended.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/app.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/colors.css"/>">
   <!-- END STACK CSS-->
   <!-- BEGIN Page Level CSS-->
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/menu/menu-types/vertical-menu.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/menu/menu-types/vertical-overlay-menu.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/colors/palette-gradient.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/colors/palette-callout.min.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/plugins/forms/extended/form-extended.min.css"/>">
   <!-- END Page Level CSS-->
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
   <script>
   $(document)
      .ready(function () {
         url = window.location.href;
         selector = '.' + url.substring(url.lastIndexOf("ffse-fbms")+10);
         console.log(selector);
         $(selector.replace(/\//g, ''))
            .addClass('active');
      });
   </script>
</head>

<body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar">

   <!-- - var navbarShadow = true-->
   <!-- navbar-fixed-top-->
   <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-light bg-gradient-x-grey-blue">
      <div class="navbar-wrapper">
         <div class="navbar-header">
            <ul class="nav navbar-nav">
               <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="ft-menu font-large-1"></i></a></li>
               <li class="nav-item"><a href="index.html" class="navbar-brand"><img src="<c:url value="/resources/images/logo/stack-logo.png"/>" alt="stack admin logo" class="brand-logo" />
                     <h2 class="brand-text">Stack</h2></a></li>
               <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="fa fa-ellipsis-v"></i></a></li>
            </ul>
         </div>
         <div class="navbar-container content container-fluid">
            <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
               <ul class="nav navbar-nav">
                  <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="ft-menu"></i></a></li>
                  <li class="dropdown nav-item mega-dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link">Mega</a>
                     <ul class="mega-dropdown-menu dropdown-menu row">
                        <li class="col-md-2">
                           <h6 class="dropdown-menu-header text-uppercase mb-1"><i class="fa fa-newspaper-o"></i> News</h6>
                           <div id="mega-menu-carousel-example">
                              <div><img src="<c:url value="/resources/images/slider/slider-2.png"/>" alt="First slide" class="rounded img-fluid mb-1"><a href="#" class="news-title mb-0">Poster Frame PSD</a>
                                 <p class="news-content"><span class="font-small-2">January 26, 2016</span></p>
                              </div>
                           </div>
                        </li>
                        <li class="col-md-3">
                           <h6 class="dropdown-menu-header text-uppercase"><i class="fa fa-random"></i> Drill down menu</h6>
                           <ul class="drilldown-menu">
                              <li class="menu-list">
                                 <ul>
                                    <li><a href="layout-2-columns.html" class="dropdown-item"><i class="ft-file"></i> Page layouts &amp; Templates</a></li>
                                    <li><a href="#"><i class="ft-align-left"></i> Multi level menu</a>
                                       <ul>
                                          <li><a href="#" class="dropdown-item"><i class="fa fa-bookmark-o"></i> Second level</a></li>
                                          <li><a href="#"><i class="fa fa-lemon-o"></i> Second level menu</a>
                                             <ul>
                                                <li><a href="#" class="dropdown-item"><i class="fa fa-heart-o"></i> Third level</a></li>
                                                <li><a href="#" class="dropdown-item"><i class="fa fa-file-o"></i> Third level</a></li>
                                                <li><a href="#" class="dropdown-item"><i class="fa fa-trash-o"></i> Third level</a></li>
                                                <li><a href="#" class="dropdown-item"><i class="fa fa-clock-o"></i> Third level</a></li>
                                             </ul>
                                          </li>
                                          <li><a href="#" class="dropdown-item"><i class="fa fa-hdd-o"></i> Second level, third link</a></li>
                                          <li><a href="#" class="dropdown-item"><i class="fa fa-floppy-o"></i> Second level, fourth link</a></li>
                                       </ul>
                                    </li>
                                    <li><a href="color-palette-primary.html" class="dropdown-item"><i class="ft-camera"></i> Color pallet system</a></li>
                                    <li><a href="sk-2-columns.html" class="dropdown-item"><i class="ft-edit"></i> Page starter kit</a></li>
                                    <li><a href="changelog.html" class="dropdown-item"><i class="ft-minimize-2"></i> Change log</a></li>
                                    <li><a href="https://pixinvent.ticksy.com/" class="dropdown-item"><i class="fa fa-life-ring"></i> Customer support center</a></li>
                                 </ul>
                              </li>
                           </ul>
                        </li>
                        <li class="col-md-3">
                           <h6 class="dropdown-menu-header text-uppercase"><i class="fa fa-list-ul"></i> Accordion</h6>
                           <div id="accordionWrap" role="tablist" aria-multiselectable="true">
                              <div class="card no-border box-shadow-0 collapse-icon accordion-icon-rotate">
                                 <div id="headingOne" role="tab" class="card-header p-0 pb-2 no-border"><a data-toggle="collapse" data-parent="#accordionWrap" href="#accordionOne" aria-expanded="true" aria-controls="accordionOne">Accordion Item #1</a></div>
                                 <div id="accordionOne" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true" class="card-collapse collapse in">
                                    <div class="card-body">
                                       <p class="accordion-text text-small-3">Caramels dessert chocolate cake pastry jujubes bonbon. Jelly wafer jelly beans. Caramels chocolate cake liquorice cake wafer jelly beans croissant apple pie.</p>
                                    </div>
                                 </div>
                                 <div id="headingTwo" role="tab" class="card-header p-0 pb-2 no-border"><a data-toggle="collapse" data-parent="#accordionWrap" href="#accordionTwo" aria-expanded="false" aria-controls="accordionTwo" class="collapsed">Accordion Item #2</a></div>
                                 <div id="accordionTwo" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" class="card-collapse collapse">
                                    <div class="card-body">
                                       <p class="accordion-text">Sugar plum bear claw oat cake chocolate jelly tiramisu dessert pie. Tiramisu macaroon muffin jelly marshmallow cake. Pastry oat cake chupa chups.</p>
                                    </div>
                                 </div>
                                 <div id="headingThree" role="tab" class="card-header p-0 pb-2 no-border"><a data-toggle="collapse" data-parent="#accordionWrap" href="#accordionThree" aria-expanded="false" aria-controls="accordionThree" class="collapsed">Accordion Item #3</a></div>
                                 <div id="accordionThree" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false" class="card-collapse collapse">
                                    <div class="card-body">
                                       <p class="accordion-text">Candy cupcake sugar plum oat cake wafer marzipan jujubes lollipop macaroon. Cake dragÃ©e jujubes donut chocolate bar chocolate cake cupcake chocolate topping.</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <li class="col-md-4">
                           <h6 class="dropdown-menu-header text-uppercase mb-1"><i class="fa fa-envelope-o"></i> Contact Us</h6>
                           <form>
                              <fieldset class="form-group">
                                 <label for="inputName1" class="col-sm-3 form-control-label">Name</label>
                                 <div class="col-sm-9">
                                    <div class="position-relative has-icon-left">
                                       <input type="text" id="inputName1" placeholder="JunBjn" class="form-control">
                                       <div class="form-control-position"><i class="fa fa-user-o pl-1"></i></div>
                                    </div>
                                 </div>
                              </fieldset>
                              <fieldset class="form-group">
                                 <label for="inputEmail1" class="col-sm-3 form-control-label">Email</label>
                                 <div class="col-sm-9">
                                    <div class="position-relative has-icon-left">
                                       <input type="email" id="inputEmail1" placeholder="john@example.com" class="form-control">
                                       <div class="form-control-position pl-1"><i class="fa fa-envelope-o"></i></div>
                                    </div>
                                 </div>
                              </fieldset>
                              <fieldset class="form-group">
                                 <label for="inputMessage1" class="col-sm-3 form-control-label">Message</label>
                                 <div class="col-sm-9">
                                    <div class="position-relative has-icon-left">
                                       <textarea id="inputMessage1" rows="2" placeholder="Simple Textarea" class="form-control"></textarea>
                                       <div class="form-control-position pl-1"><i class="fa fa-commenting-o"></i></div>
                                    </div>
                                 </div>
                              </fieldset>
                              <div class="col-sm-12 mb-1">
                                 <button type="button" class="btn btn-primary float-xs-right"><i class="fa fa-paper-plane-o"></i> Send</button>
                              </div>
                           </form>
                        </li>
                     </ul>
                  </li>
                  <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-link-expand"><i class="ficon ft-maximize"></i></a></li>
                  <li class="nav-item nav-search"><a href="#" class="nav-link nav-link-search"><i class="ficon ft-search"></i></a>
                     <div class="search-input">
                        <input type="text" placeholder="Explore Stack..." class="input">
                     </div>
                  </li>
               </ul>
               <ul class="nav navbar-nav float-xs-right">
                  <li class="dropdown dropdown-language nav-item"><a id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle nav-link"><i class="flag-icon flag-icon-gb"></i><span class="selected-language"></span></a>
                     <div aria-labelledby="dropdown-flag" class="dropdown-menu"><a href="?lang=en" class="dropdown-item"><i class="flag-icon flag-icon-gb"></i> English</a><a href="?lang=vi" class="dropdown-item"><i class="flag-icon flag-icon-vn"></i> Việt Nam</a></div>
                  </li>
                  <li class="dropdown dropdown-notification nav-item"><a href="#" data-toggle="dropdown" class="nav-link nav-link-label"><i class="ficon ft-bell"></i><span class="tag tag-pill tag-default tag-danger tag-default tag-up">5</span></a>
                     <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                        <li class="dropdown-menu-header">
                           <h6 class="dropdown-header m-0"><span class="grey darken-2">Notifications</span><span class="notification-tag tag tag-default tag-danger float-xs-right m-0">5 New</span></h6>
                        </li>
                        <li class="list-group scrollable-container"><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left valign-middle"><i class="ft-plus-square icon-bg-circle bg-cyan"></i></div>
                                 <div class="media-body">
                                    <h6 class="media-heading">You have new order!</h6>
                                    <p class="notification-text font-small-3 text-muted">Lorem ipsum dolor sit amet, consectetuer elit.</p><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">30 minutes ago</time></small>
                                 </div>
                              </div>
                           </a><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left valign-middle"><i class="ft-download-cloud icon-bg-circle bg-red bg-darken-1"></i></div>
                                 <div class="media-body">
                                    <h6 class="media-heading red darken-1">99% Server load</h6>
                                    <p class="notification-text font-small-3 text-muted">Aliquam tincidunt mauris eu risus.</p><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Five hour ago</time></small>
                                 </div>
                              </div>
                           </a><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left valign-middle"><i class="ft-alert-triangle icon-bg-circle bg-yellow bg-darken-3"></i></div>
                                 <div class="media-body">
                                    <h6 class="media-heading yellow darken-3">Warning notifixation</h6>
                                    <p class="notification-text font-small-3 text-muted">Vestibulum auctor dapibus neque.</p><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Today</time></small>
                                 </div>
                              </div>
                           </a><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left valign-middle"><i class="ft-check-circle icon-bg-circle bg-cyan"></i></div>
                                 <div class="media-body">
                                    <h6 class="media-heading">Complete the task</h6><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Last week</time></small>
                                 </div>
                              </div>
                           </a><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left valign-middle"><i class="ft-file icon-bg-circle bg-teal"></i></div>
                                 <div class="media-body">
                                    <h6 class="media-heading">Generate monthly report</h6><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Last month</time></small>
                                 </div>
                              </div>
                           </a></li>
                        <li class="dropdown-menu-footer"><a href="javascript:void(0)" class="dropdown-item text-muted text-xs-center">Read all notifications</a></li>
                     </ul>
                  </li>
                  <li class="dropdown dropdown-notification nav-item"><a href="#" data-toggle="dropdown" class="nav-link nav-link-label"><i class="ficon ft-mail"></i><span class="tag tag-pill tag-default tag-warning tag-default tag-up">3</span></a>
                     <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                        <li class="dropdown-menu-header">
                           <h6 class="dropdown-header m-0"><span class="grey darken-2">Messages</span><span class="notification-tag tag tag-default tag-warning float-xs-right m-0">4 New</span></h6>
                        </li>
                        <li class="list-group scrollable-container"><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="<c:url value="/resources/images/portrait/small/avatar-s-1.png"/>" alt="avatar"><i></i></span></div>
                                 <div class="media-body">
                                    <h6 class="media-heading">Margaret Govan</h6>
                                    <p class="notification-text font-small-3 text-muted">I like your portfolio, let's start the project.</p><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Today</time></small>
                                 </div>
                              </div>
                           </a><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left"><span class="avatar avatar-sm avatar-busy rounded-circle"><img src="<c:url value="/resources/images/portrait/small/avatar-s-2.png"/>" alt="avatar"><i></i></span></div>
                                 <div class="media-body">
                                    <h6 class="media-heading">Bret Lezama</h6>
                                    <p class="notification-text font-small-3 text-muted">I have seen your work, there is</p><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Tuesday</time></small>
                                 </div>
                              </div>
                           </a><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left"><span class="avatar avatar-sm avatar-online rounded-circle"><img src="<c:url value="/resources/images/portrait/small/avatar-s-3.png"/>" alt="avatar"><i></i></span></div>
                                 <div class="media-body">
                                    <h6 class="media-heading">Carie Berra</h6>
                                    <p class="notification-text font-small-3 text-muted">Can we have call in this week ?</p><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">Friday</time></small>
                                 </div>
                              </div>
                           </a><a href="javascript:void(0)" class="list-group-item">
                              <div class="media">
                                 <div class="media-left"><span class="avatar avatar-sm avatar-away rounded-circle"><img src="<c:url value="/resources/images/portrait/small/avatar-s-6.png"/>" alt="avatar"><i></i></span></div>
                                 <div class="media-body">
                                    <h6 class="media-heading">Eric Alsobrook</h6>
                                    <p class="notification-text font-small-3 text-muted">We have project party this saturday night.</p><small>
                                       <time datetime="2015-06-11T18:29:20+08:00" class="media-meta text-muted">last month</time></small>
                                 </div>
                              </div>
                           </a></li>
                        <li class="dropdown-menu-footer"><a href="javascript:void(0)" class="dropdown-item text-muted text-xs-center">Read all messages</a></li>
                     </ul>
                  </li>
                  <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online"><img src="<c:url value="/resources/images/portrait/small/avatar-s-1.png"/>" alt="avatar"><i></i></span><span class="user-name">JunBjn</span></a>
                     <div class="dropdown-menu dropdown-menu-right">
                     	<a href="#" class="dropdown-item"><i class="ft-user"></i> <spring:message code="label.suaHoSo" /></a>
                     	<a href="#" class="dropdown-item"><i class="ft-mail"></i> <spring:message code="label.hopThu" /></a>
                     	<a href="#" class="dropdown-item"><i class="ft-check-square"></i> <spring:message code="label.nhiemVu" /></a>
                     	<a href="#" class="dropdown-item"><i class="ft-message-square"></i> <spring:message code="label.tinNhan" /></a>
                        <div class="dropdown-divider"></div><a href="#" class="dropdown-item"><i class="ft-power"></i> <spring:message code="label.dangXuat" /></a>
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
            <li class=" navigation-header"><span><spring:message code="label.nhanVien" /></span><i data-toggle="tooltip" data-placement="right" data-original-title="Apps" class=" ft-minus"></i>
            </li>
            <li class=" nav-item"><a href="#"><i class="ft-user"></i><span data-i18n="" class="menu-title"><spring:message code="label.hoSoBanThan" /></span></a>
            </li>
            <li class=" nav-item"><a href="#"><i class="ft-file-text"></i><span data-i18n="" class="menu-title"><spring:message code="label.hopDongLaoDong" /></span></a>
            </li>
          <li class=" nav-item"><a href="#"><i class="ft-airplay"></i><span data-i18n="" class="menu-title"><spring:message code="label.xemTatCa" /></span></a>
            </li>
            <li class=" navigation-header"><span><spring:message code="label.quanLyNhanSu" /></span><i data-toggle="tooltip" data-placement="right" data-original-title="Quản lý nhân sự" class=" ft-minus"></i>
            </li>
            <li class=" nav-item"><a href="javascript:void(0)"><i class="ft-home"></i><span data-i18n="" class="menu-title"><spring:message code="label.quanLyPhongBan" /></span></a>
               <ul class="menu-content">
                  <li class="nsphong_ban"><a href="<c:url value = "/ns/phong_ban"/>" class="menu-item"><spring:message code="label.danhSachPhongBan" /></a>
                  </li>
                  <li class="nsphong_banadd"><a href="<c:url value = "/ns/phong_ban/add"/>" class="menu-item"><spring:message code="label.themPhongBan" /></a>
                  </li>
               </ul>
            </li>
            <li class=" nav-item"><a href="javascript:void(0)"><i class="ft-award"></i><span data-i18n="" class="menu-title"><spring:message code="label.quanLyChucDanh" /></span></a>
               <ul class="menu-content">
                  <li class="nschuc_danh"><a href="<c:url value = "/ns/chuc_danh"/>" class="menu-item"><spring:message code="label.danhSachChucDanh" /></a>
                  </li>
                  <li class="nschuc_danhadd"><a href="<c:url value = "/ns/chuc_danh/add"/>" class="menu-item"><spring:message code="label.themChucDanh" /></a>
                  </li>
               </ul>
            </li>
            <li class=" nav-item"><a href="javascript:void(0)"><i class="ft-users"></i><span data-i18n="" class="menu-title"><spring:message code="label.quanLyHoSo" /></span></a>
               <ul class="menu-content">
                  <li><a href="javascript:void(0)" class="menu-item"><spring:message code="label.danhSachHoSo" /></a>
                  	<ul class="menu-content">
					   <li class="nsho_so"><a href="<c:url value = "/ns/ho_so"/>" class="menu-item"><spring:message code="label.xemTatCa" /></a>
					   </li>
					   <li><a href="javascript:void(0)" class="menu-item"><spring:message code="label.phongBan" /></a>
					      <ul class="menu-content">
					         <li class="PGDho_so"><a href="<c:url value = "/PGD/ho_so"/>" class="menu-item"><spring:message code="label.phongGiamDoc" /></a>
					         </li>
					         <li class="PNSho_so"><a href="<c:url value = "/PNS/ho_so"/>" class="menu-item"><spring:message code="label.phongNhanSu" /></a>
					         </li>
					         <li class="PKTho_so"><a href="<c:url value = "/PKT/ho_so"/>" class="menu-item"><spring:message code="label.phongKeToan" /></a>
					         </li>
					         <li class="PDAho_so"><a href="<c:url value = "/PDA/ho_so"/>" class="menu-item"><spring:message code="label.phongDuAn" /></a>
					         </li>
					         <li class="PDTho_so"><a href="<c:url value = "/PDT/ho_so"/>" class="menu-item"><spring:message code="label.phongDaoTao" /></a>
					         </li>
					         <li class="PITho_so"><a href="<c:url value = "/PIT/ho_so"/>" class="menu-item"><spring:message code="label.phongIT" /></a>
					         </li>
					      </ul>
					   </li>
					</ul>
                  </li>
                  <li class="nsho_soadd"><a href="<c:url value = "/ns/ho_so/add"/>" class="menu-item"><spring:message code="label.themHoSo" /></a>
                  </li>
               </ul>
            </li>
            <li class=" nav-item"><a href="javascript:void(0)"><i class="ft-file-text"></i><span data-i18n="" class="menu-title"><spring:message code="label.quanLyHopDong" /></span></a>
               <ul class="menu-content">
                  <li><a href="javascript:void(0)" class="menu-item"><spring:message code="label.danhSachHopDong" /></a>
                  	<ul class="menu-content">
					   <li class="nshop_dong"><a href="<c:url value = "/ns/hop_dong"/>" class="menu-item"><spring:message code="label.xemTatCa" /></a>
					   </li>
					   <li><a href="javascript:void(0)" class="menu-item"><spring:message code="label.phongBan" /></a>
					      <ul class="menu-content">
					         <li class="PGDhop_dong"><a href="<c:url value = "/PGD/hop_dong"/>" class="menu-item"><spring:message code="label.phongGiamDoc" /></a>
					         </li>
					         <li class="PNShop_dong"><a href="<c:url value = "/PNS/hop_dong"/>" class="menu-item"><spring:message code="label.phongNhanSu" /></a>
					         </li>
					         <li class="PKThop_dong"><a href="<c:url value = "/PKT/hop_dong"/>" class="menu-item"><spring:message code="label.phongKeToan" /></a>
					         </li>
					         <li class="PDAhop_dong"><a href="<c:url value = "/PDA/hop_dong"/>" class="menu-item"><spring:message code="label.phongDuAn" /></a>
					         </li>
					         <li class="PDThop_dong"><a href="<c:url value = "/PDT/hop_dong"/>" class="menu-item"><spring:message code="label.phongDaoTao" /></a>
					         </li>
					         <li class="PIThop_dong"><a href="<c:url value = "/PIT/hop_dong"/>" class="menu-item"><spring:message code="label.phongIT" /></a>
					         </li>
					      </ul>
					   </li>
					</ul>
                  </li>
                  <li class="nshop_dongadd"><a href="<c:url value = "/ns/hop_dong/add"/>" class="menu-item"><spring:message code="label.themHopDong" /></a>
                  </li>
               </ul>
            </li>
         </ul>
      </div>
   </div>