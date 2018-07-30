<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="page_title" required="true" type="java.lang.String"%>
<%@ attribute name="page_keywords" required="true" type="java.lang.String"%>
<%@ attribute name="page_description" required="true" type="java.lang.String"%>
<head>
	<title>${page_title}</title>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta name="keywords" content="${page_keywords}">
	<meta name="description" content="${page_description}">
	<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value='/resources/css/font-awesome.css'/>" rel="stylesheet"/>
	<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.2.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
</head>
