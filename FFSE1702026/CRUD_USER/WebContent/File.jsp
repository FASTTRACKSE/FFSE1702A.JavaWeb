<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>File Uploading Form</title>
</head>
<body>
<h3>File Upload:</h3>
Select a file to upload: <br />
<form action="upload" method="post"
                        enctype="multipart/form-data">
<input type="file" name="file[]" size="50" multiple/>
<br />
<input type="submit" value="Upload File" />
</form>
</body>
</html>