<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tg"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tg:header page_title="quản lý sinh viên" page_description="quản lý sinh viên" page_keywords="quản lý sinh viên"></tg:header>
<body>
	<section>
		<header class="header">
			<nav class="navbar" data-spy="affix" data-offset-top="180" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#wrapper-mainmenu">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="">
							<img src="<c:url value='/resources/images/logo.png' />" class="logo img-responsive" title="trang chủ">
						</a>
					</div>
					<div id="wrapper-mainmenu" class="collapse navbar-collapse">
						<ul class="nav navbar-nav main-menu">
							<li><a href="">Trang chủ</a></li>
							<li><a href="">Giới thiệu</a></li>
							<li>
								<a href="#">Thông tin</a>
								<ul class="sub-menu">
									<li><a href="">FasttrackSE</a></li>
									<li><a href="">Thông tin người làm dự án</a></li>
								</ul>
							</li>
							<li>
								<a href="">Du lịch</a>
								<ul class="sub-menu">
									<li><a href="dia-diem-an-uong.html">Địa điểm ăn uống</a></li>
								</ul>
							</li>
							<li>
								<a href="">Sự kiện</a>
								<ul class="sub-menu">
									<li><a href="">Calendar</a></li>
								</ul>
							</li>
							<li><a href="">Thư viện ảnh</a></li>
						</ul>
						<div id="top-search">
							<a href="javascript:void(0);" class="search-click"><i class="fa fa-search" aria-hidden="true"></i></a>
							<div class="show-search">
								<form role="search" id="searchform" method="get" action="">
									<input type="text" class="search-input" name="q" id="request" placeholder="Nhập từ khóa tìm kiếm rồi nhấn Enter">
								</form>
								<a href="javascript:void(0);" class="close-search"><i class="fa fa-times" aria-hidden="true"></i></a>
							</div>
						</div>
					</div><!--/.nav-collapse -->
				</div>
			</nav>
		</header>
	</section>
	<section class="container">
		<h1>Danh sách sinh viên</h1>
	</section>
	<tg:footer></tg:footer>
</body>
</html>