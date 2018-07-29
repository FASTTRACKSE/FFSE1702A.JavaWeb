<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3> Hello Baby</h3>
<h:dataTable value="studentController.studentList" var="temStudent">

			<h:column>
				<f:facet name="header">First Name</f:facet>
				<h:outputText value="{temStudent.firstName}" />
			</h:column>
			<h:column>
				<f:facet name="header">last Name</f:facet>
				<h:outputText value="{temStudent.lastName}" />
			</h:column>
			<h:column>
				<f:facet name="header">Email </f:facet>
				<h:outputText value="{temStudent.email}" />
			</h:column>
			
		</h:dataTable>
</body>
</html>