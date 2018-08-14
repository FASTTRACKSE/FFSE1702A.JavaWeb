<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
<style type="text/css">
.dropdown-menu>li>a {
    display: block;
    padding: 3px 20px;
    clear: both;
    font-weight: 400;
    line-height: 1.42857143;
    color: #333;
    white-space: nowrap;
}
</style>
</head>
<body>
<a href="<c:url value="/" />" >List Customer</a><br />

<h1>Add new Customer:</h1>
<c:url value="/saveCustomer" var="saveCustomer"/>
<form:form action="${saveCustomer}" method="POST"
modelAttribute="customer">
    FirstName: <form:input path="name" /> <br/> <br/>
    LastName: <form:input path="address" /> <br/> <br/>
    Email: <form:input path="email" /> <br/> <br/>
<button type="submit">Submit</button>
</form:form>

</body>
</html>