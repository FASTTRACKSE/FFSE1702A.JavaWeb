<%@ page import="java.util.*"%><!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	var path = '${pageContext.request.contextPath}';
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="http://cdn.datatables.net/1.10.3/css/jquery.dataTables.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://cdn.datatables.net/1.10.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom-datatable.js"></script>
<title>Person Form</title>
</head>
<body>
<form>
	<div class="form">
		<table width="100%" border="0" margin="0" padding="0" 
			class="row-border tableHeader" id="personTable">
			<thead>
				<tr>
				    <th>Id</th>
					<th>Name</th>
					<th>Place</th>
					<th>City</th>
					<th>State</th>
					<th>Phone</th>
				</tr>
			</thead>
			<tfoot>
			  <tr>
					<th>Id</th>
					<th>Name</th>
					<th>Place</th>
					<th>City</th>
					<th>State</th>
					<th>Phone</th>
			 </tr>
		   </tfoot>
			<tbody>
			</tbody>
		</table>
	</div>
</form>
<style>
</style>
</body>
</html>