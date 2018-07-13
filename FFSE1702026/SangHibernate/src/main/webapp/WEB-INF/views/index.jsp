<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Danh sách khách hàng</title>
<style>
table, th, td {
	border: 1px solid black;
}

td {
	padding-right: 30px;
}
</style>

</head>
<body>
	<c:url var="urledit" value="/edit"></c:url>
	<c:url var="urldelete" value="/delete" />
	<c:url var="urlcreate" value="/create" />
	
	<a href="${urlcreate }" >Thêm mới khách hàng</a>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Sửa</th>
			<th>Xóa</th>
		</tr>
		<c:forEach var="user" items="${list }">
			<tr>
				<td>${user.user_id }</td>
				<td>${user.user_name }</td>
				<td>${user.email }</td>
				<td><a href="${urledit }/${user.user_id }">sửa</a></td>
				<td><a href="${urldelete }/${user.user_id }">xóa</a></td>

			</tr>

		</c:forEach>

	</table>
	<script>

        // [1] Load lên các thành phần cần thiết
        window.fbAsyncInit = function () {
            FB.init({
                appId: '378531126002907',
                cookie: true,
                xfbml: true,
                version: 'v2.5'
            });
            // Kiểm tra trạng thái hiện tại
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });

        };

        // [2] Xử lý trạng thái đăng nhập
        function statusChangeCallback(response) {
            // Người dùng đã đăng nhập FB và đã đăng nhập vào ứng dụng
            if (response.status === 'connected') {
                ShowWelcome();
            }
            // Người dùng đã đăng nhập FB nhưng chưa đăng nhập ứng dụng
            else if (response.status === 'not_authorized') {
                ShowLoginButton();
            }
            // Người dùng chưa đăng nhập FB
            else {
                ShowLoginButton();
            }
        }

        // [3] Yêu cầu đăng nhập FB
        function RequestLoginFB() {
            window.location = 'https://www.facebook.com/v3.0/dialog/oauth?client_id=378531126002907&redirect_uri=https://accounts.google.com/&state=';
        }

        // [4] Hiển thị nút đăng nhập
        function ShowLoginButton() {
            document.getElementById('btb').setAttribute('style', 'display:block');
            document.getElementById('lbl').setAttribute('style', 'display:none');
        }

        // [5] Chào mừng người dùng đã đăng nhập
        function ShowWelcome() {
            document.getElementById('btb').setAttribute('style', 'display:none');            
            FB.api('/me', function (response) {
                var name = response.name;
                var username = response.username;
                var id = response.id;
                document.getElementById('lbl').innerHTML = 'Tên=' + name + ' | username=' + username + ' | id=' + id;
                document.getElementById('lbl').setAttribute('style', 'display:block');
            });
        }

    </script>
    <div id="fb-root"></div>
    <script>
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=310302665968750";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>



    <!-- NÚT ĐĂNG NHẬP -->
    <input id="btb" type="button" value="ĐĂNG NHẬP" onclick="RequestLoginFB()"  />
    <p id="lbl" style="display:none">BẠN ĐÃ ĐĂNG NHẬP THÀNH CÔNG!</p>
    <br />
    <a href="">abc</a>

</body>
</html>