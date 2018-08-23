<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav
	class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-light bg-gradient-x-grey-blue">
	<div class="navbar-wrapper">
		<div class="navbar-header">
			<ul class="nav navbar-nav">
				<li class="nav-item mobile-menu hidden-md-up float-xs-left"><a
					href="#" class="nav-link nav-menu-main menu-toggle hidden-xs"><i
						class="ft-menu font-large-1"></i></a></li>
				<li class="nav-item"><a href="index.html" class="navbar-brand"><img
						alt="stack admin logo"
						src="<c:url value="/resources/images/logo/stack-logo.png"/>"
						class="brand-logo">
						<h2 class="brand-text">Stack <c:out value="${local }"/></h2></a></li>
				<li class="nav-item hidden-md-up float-xs-right"><a
					data-toggle="collapse" data-target="#navbar-mobile"
					class="nav-link open-navbar-container"><i
						class="fa fa-ellipsis-v"></i></a></li>
			</ul>
		</div>
		<div class="navbar-container content container-fluid">
			<div id="navbar-mobile" class="collapse navbar-toggleable-sm">
				<ul class="nav navbar-nav">
					<li class="nav-item hidden-sm-down"><a href="#"
						class="nav-link nav-menu-main menu-toggle hidden-xs"><i
							class="ft-menu"></i></a></li>
					<li class="nav-item hidden-sm-down"><a href="#"
						class="nav-link nav-link-expand"><i class="ficon ft-maximize"></i></a></li>
					<li class="nav-item nav-search"><a href="#"
						class="nav-link nav-link-search"><i class="ficon ft-search"></i></a>
						<div class="search-input">
							<input type="text" placeholder="Explore Stack..." class="input">
						</div></li>
				</ul>
			
		
				<ul class="nav navbar-nav float-xs-right">
					<li class="dropdown dropdown-language nav-item"><a
						id="dropdown-flag" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"
						class="dropdown-toggle nav-link"><i
					<c:if test="${local=='vi' }">class="flag-icon flag-icon-vn"</c:if><c:if test="${local=='en' }">class="flag-icon flag-icon-gb"</c:if><c:if test="${local=='fr' }">class="flag-icon flag-icon-fr"</c:if><c:if test="${local=='ja' }">class="flag-icon flag-icon-jp"</c:if>	 	></i><span
							class="selected-language"></span></a>
						<div aria-labelledby="dropdown-flag" class="dropdown-menu">
							<a href="?language=vi" class="dropdown-item"><i
								class="flag-icon flag-icon-vn"></i> Vietnamese</a><a href="?language=en"
								class="dropdown-item"><i class="flag-icon flag-icon-gb"></i>
								EngLish</a><a href="?language=ja" class="dropdown-item"><i
								class="flag-icon flag-icon-jp"></i> Japan</a><a href="?language=fr"
								class="dropdown-item"><i class="flag-icon flag-icon-fr"></i>
								France</a>
						</div></li>
					<li class="dropdown dropdown-user nav-item"><a href="#"
						data-toggle="dropdown"
						class="dropdown-toggle nav-link dropdown-user-link"><span
							class="avatar avatar-online"><img
								src="<c:url value="/resources/images/portrait/small/avatar-s-1.png"/>"
								alt="avatar" /><i></i></span><span class="user-name">${username }</span></a>
						<div class="dropdown-menu dropdown-menu-right">

							<form class="dropdown-item"
								action="<c:url value="/j_spring_security_logout" />"
								method="post">
								
									
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> 
									<button type="submit" class="btn btn-primary btn-md btn-block"><i
									class="ft-power"></i> Logout</button>
							</form>

						</div></li>
				</ul>
			</div>
		</div>
	</div>
</nav>
