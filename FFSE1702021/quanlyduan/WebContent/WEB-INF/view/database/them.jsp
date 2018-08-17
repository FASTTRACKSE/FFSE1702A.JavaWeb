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
					<h4 class="card-title"><spring:message code="database.add"></spring:message></h4>
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
						
						<form:form cssClass="form-horizontal" modelAttribute="database" method="POST" action="create" >
						
							<div class="row">
								<div class="col-lg-6 col-md-12">
									<div class="form-group">
										<h5><spring:message code="database.code"></spring:message></h5>
										<div class="controls">
											<form:input path="maDatabase" cssClass="form-control"/>
											<form:errors path="maDatabase" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									<div class="form-group">
										<h5><spring:message code="database.name"></spring:message></h5>
										<div class="controls">
											<form:input path="tenDatabase" cssClass="form-control"/>
											<form:errors path="tenDatabase" cssStyle="color: red"></form:errors>
										<div class="help-block"></div></div>
										
									</div>
									
									
									<div class="text-xs-right">
										<button type="submit"  class="btn btn-success">Submit <i class="fa fa-thumbs-o-up position-right"></i></button>
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
				