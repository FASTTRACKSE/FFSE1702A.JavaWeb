<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style>
    td {
      padding: 10px;
      font-size: 15px;
    }
    .bt-change {
      background-color: #2a96f3;
      padding: 10% 17%;
      border-radius: 10px;
      font-size: 15px;
      margin-right: 2%;
      font-weight: 600;
    }
    .bt-change:hover {
      background: #165e88;
      color: white;
    }
    .bt-cancel {
      background: #f1ba57;
      border-radius: 10px;
      padding: 6%;
      font-size: 15px;
      font-weight: 600;
    }
    .bt-cancel:hover {
      background: #e69400;
      color: white;
    }
  </style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Thêm Sinh viên</title>
</head>
<body>
	<form method = "post" enctype="multipart/form-data" action="">
		<table>
        <tr>
            <td>Mã SV:</td>
            <td><input type="text" name="usercode"></td>
        </tr>
        <tr>
            <td>Tên SV:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>Giới tính:</td>
            <td>
            	<input type='radio' name='sex' value='Nam'/>Nam &emsp;
				<input type='radio' name='sex' value='Nữ'/>Nữ
            </td>
        </tr>
        <tr>
		    <td>Chọn hình ảnh: </td>
		    <td><input type="file" name="photo" size="50"/></td>
	  	</tr>
        <tr>
            <td>Địa chỉ:</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Lớp:</td>
            <td>
            	<select id="classId" name="class">
            		<option value="FFSE1701">FFSE1701</option>
            		<option value="FFSE1702">FFSE1702</option>
            		<option value="FFSE1703">FFSE1703</option>
            		<option value="FFSE1704">FFSE1704</option>
            	</select>
            </td>
        </tr>
        <tr>
            <td><input class="bt-change" type="submit" name="adduser" value="Thêm"></td>
            <td><input class="bt-cancel" type="submit" name="cancel" value="Quay lại"></td>
        </tr>
    </table>
	</form>
</body>
</html>