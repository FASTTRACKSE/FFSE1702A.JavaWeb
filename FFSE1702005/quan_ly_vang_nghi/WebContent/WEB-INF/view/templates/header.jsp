<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
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
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/pickers/datetime/bootstrap-datetimepicker.css"/>">
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/pickers/daterange/daterangepicker.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/pickers/pickadate/pickadate.css"/>">
</head>

<body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar">

   <!-- - var navbarShadow = true-->
   <!-- navbar-fixed-top-->
   <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-light bg-gradient-x-grey-blue">
      <div class="navbar-wrapper">
         <div class="navbar-header">
            <ul class="nav navbar-nav">
               <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="ft-menu font-large-1"></i></a></li>
               <li class="nav-item"><a href="index.html" class="navbar-brand"><img alt="stack admin logo" src="<c:url value="/resources/images/logo/stack-logo.png"/>" class="brand-logo" />
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
                                       <input type="text" id="inputName1" placeholder="John Doe" class="form-control">
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
                  <li class="dropdown dropdown-language nav-item"><a id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle nav-link"><i class="flag-icon"></i><spring:message code="ngonngu" /><span class="selected-language"></span></a>
                     <div aria-labelledby="dropdown-flag" class="dropdown-menu"><a href="<c:url value="?language=en "/>" class="dropdown-item"><i class="flag-icon flag-icon-gb"></i> English</a><a href="<c:url value="?language=vi "/>" class="dropdown-item"><i class="flag-icon flag-icon-vn"></i> Tiếng Việt</a></div>
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
                  <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online"><img src="<c:url value="/resources/images/portrait/small/avatar-s-1.png"/>" alt="avatar"><i></i></span><span class="user-name">John Doe</span></a>
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
                  
            <li class=" nav-item active"><a href="#"><i class="ft-edit"></i><span data-i18n="" class="menu-title">Quản lý đơn xin nghỉ</span></a>
               <ul class="menu-content">                                  
                  <li><a href="<c:url value="/donxinnghi"/>" class="menu-item">Đơn xin nghỉ</a>
                  </li>
                  <li><a href="<c:url value="/danhsachcho"/>" class="menu-item">Đơn chờ phê duyệt</a>
                  </li>
                  <li><a href="<c:url value="/danhsachduyet"/>" class="menu-item">Đơn đã phê duyệt</a>
                  </li>
                  <li class="active"><a href="<c:url value="/danhsachnhap"/>" class="menu-item">Đơn của tôi</a>
                  </li>
               </ul>
            </li>
         </ul>
      </div>
   </div>