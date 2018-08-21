<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload file Spring MVC Framework</title>
<style>
	#upload{
		background:#E4F4F2;
		padding: 30px;
		margin-top:30px;
	}
	.left{
		float:left;
	}
	
	.right{
		float:right;
	}
	.clr{
		clear:both;
	}
	.img{
		width:350px;
		height:190px;
	}
</style>
</head>
<body style="margin:0 auto; width:1024px">
	<div id="upload">
		<h1>Upload file </h1>
		<div>
			<div class="left"> 
				<form action="${pageContext.request.contextPath}/uploadfile" method="post" enctype="multipart/form-data">
					Chọn file : <input type="file"  value="Upload File"  name="file" /><br /><br />
					<input name="submit" value="Upload" type="submit" />
				</form>
			</div>
			<div class="clr"></div>
		</div>
	</div>
</body>
</html>