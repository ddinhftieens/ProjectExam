<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/29/2019
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/static/css/register.css">
    <title>Register</title>
</head>
<body>
<h1 style="font-size: xx-large;text-align: center">Register</h1>
<form style="border: 1px solid #ccc">
    <div class="container">
        <label><b>Tài khoản</b></label>
        <input type="text" placeholder="Tài khoản" id="username" required>
        <label><b>Mật khẩu</b></label>
        <input type="password" placeholder="Mật khẩu" id="password" required>
        <label><b> Nhập lại mật khẩu</b></label>
        <input type="password" placeholder="Nhập lại mật khẩu" id="repeatpass" required>
        <label><b>Tên</b></label>
        <input type="text" placeholder="Tên" id="fristName" required>
        <label><b>Họ</b></label>
        <input type="text" placeholder="Họ" id="lastName" required>
        <label><b>Giới tính</b></label>
        <select id="sex">
            <option value="son">Nam</option>
            <option value="daughter">Nữ</option>
        </select>
        <br><br><label><b>Ngày sinh</b></label>
        <input type="date" id="dateOfbird" required>
        <br><br><label><b>Địa chỉ</b></label>
        <input type="text" placeholder="Địa chỉ" id="address" required>
        <label><b>Số điện thoại</b></label>
        <input type="text" placeholder="Số điện thoại" id="phone" required>
        <label><b>Nghề nghiệp</b></label>
        <select id="job">
            <option value="Student">Học sinh</option>
            <option value="Orther">Khác</option>
        </select>
        <br><br><label><b>Số CMND/CCCD </b></label>
        <input type="text" id="IDcard" placeholder="Số CMND/CCCD" required>
        <div class="clearfix">
<%--            <button type="button" class="cancelbtn">Cancel</button>--%>
            <button type="submit">Sign Up</button>
        </div>
    </div>
</form>
</body>
</html>
