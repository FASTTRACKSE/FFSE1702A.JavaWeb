<%-- 
    Document   : form
    Created on : 1-Nov-2016, 7:50:55 PM
    Author     : TUNGDUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kenhlaptrinh.net</title>

        <!-- Bootstrap core CSS -->
        <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="./resources/css/bootstrap-combined.min.css" rel="stylesheet">

    </head>
    <body>

        <form:form class="form-horizontal" action='ket-qua.html' method="POST" commandName="taiKhoan">
            <fieldset>
                <div id="legend">
                    <legend class="">&nbsp;&nbsp;Thông tin đăng ký tài khoản</legend>
                </div>
                <div class="control-group">
                    <!-- Username -->
                    <label class="control-label" for="username">Họ và tên:</label>
                    <div class="controls">
                        <form:input path="hoTen" placeholder="Nhập họ và tên của bạn..." class="input-xlarge"/>
                        <p class="help-block">Họ và tên hoặc biệt danh của bạn</p>
                    </div>
                </div>

                <div class="control-group">
                    <!-- E-mail -->
                    <label class="control-label" for="email">Tên đăng nhập</label>
                    <div class="controls">
                        <form:input path="tenDangNhap" placeholder="Nhập tên đăng nhập..." class="input-xlarge"/>
                        <p class="help-block">Tên đăng nhập là chữ thường, không dấu</p>
                    </div>
                </div>
                        
                <div class="control-group">
                    <!-- E-mail -->
                    <label class="control-label" for="email">E-mail</label>
                    <div class="controls">
                        <form:input path="email" placeholder="Nhập địa chỉ E-mail..." class="input-xlarge"/>
                        <p class="help-block">Địa chỉ E-mail được cung cấp từ diễn đàn Kênh Lập Trình</p>
                    </div>
                </div>        

                <div class="control-group">
                    <!-- Password-->
                    <label class="control-label" for="password">Mật khẩu</label>
                    <div class="controls">
                        <form:password path="matKhau" placeholder="Nhập mật khẩu của bạn..." class="input-xlarge"/>
                        <p class="help-block">Mật khẩu từ 6 đến 20 ký tự, có phân biệt HOA và thường</p>
                    </div>
                </div>

                <div class="control-group">
                    <!-- Button -->
                    <div class="controls">
                        <button class="btn btn-success">Gởi yêu cầu</button>
                    </div>
                </div>
            </fieldset>
        </form:form>

    </body>
</html>