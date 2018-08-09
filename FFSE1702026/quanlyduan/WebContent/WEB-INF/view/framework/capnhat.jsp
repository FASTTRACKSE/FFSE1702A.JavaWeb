<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<section class="input-validation">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title"><spring:message code="framework.update"></spring:message></h4>
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
					<div class="card-block ">
						<c:url value="/framework/update" var = "update" />
						<form:form cssClass="form-horizontal" modelAttribute="framework" method="POST" action="${update}" >
						
							<div class="row">
								<div class="col-lg-6 col-md-12">
									<div class="form-group">
										<h5><spring:message code="framework.code"></spring:message></h5>
										<div class="controls">
											<form:input readonly="true" path="maFramework" cssClass="form-control"/>
											
											<form:errors path="maFramework" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5><spring:message code="framework.name"></spring:message></h5>
										<div class="controls">
											<form:input path="tenFramework" cssClass="form-control"/>
											<form:errors path="tenFramework" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									
									
									<div class="text-xs-right">
										<button type="submit" class="btn btn-success">Submit <i class="fa fa-thumbs-o-up position-right"></i></button>
										<button type="reset" class="btn btn-danger">Reset <i class="fa fa-refresh position-right"></i></button>
									</div>
								</div>
								
							</div>
						
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
				