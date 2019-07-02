<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/29/2019
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/static/css/register.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        var captch = "";
        var input = "";
        $(document).ready(function () {
            $("#signup").click(function () {
                input = $("#captcha").val();
                captch = $("#codeCaptcha").text();
                if(input == captch){
                    return true;
                }
                else {
                    $("#captcha").val("");
                    return false;
                }
            })
        })
    </script>
    <title>Register</title>
</head>
<body>
<h1 style="font-size: xx-large;text-align: center">Đăng kí</h1>
<form style="border: 1px solid #ccc" method="post">
    <div class="container">
        <label><b>Tài khoản</b></label>
        <input type="text" placeholder="Tài khoản" id="username" name="username" required>
        <label><b>Mật khẩu</b></label>
        <input type="password" placeholder="Mật khẩu" id="password" name="password" required>
        <label><b> Nhập lại mật khẩu</b></label>
        <input type="password" placeholder="Nhập lại mật khẩu" id="repeatpass" name="repeatpass" required>
        <label><b>Tên</b></label>
        <input type="text" placeholder="Tên" id="fristName" name="fristName" required>
        <label><b>Họ</b></label>
        <input type="text" placeholder="Họ" id="lastName" name="lastName" required>
        <label><b>Giới tính</b></label>
        <select id="sex" name="sex">
            <option value="Son">Nam</option>
            <option value="Daughter">Nữ</option>
        </select>
        <br><br><label><b>Ngày sinh</b></label>
        <input type="date" id="dateOfbird" name="dateOfbird" required>
        <br><br><label><b>Địa chỉ</b></label>
        <input type="text" placeholder="Địa chỉ" id="address" name="address" required>
        <label><b>Số điện thoại</b></label>
        <input type="text" placeholder="Số điện thoại" id="phone" name="phone" required>
        <label><b>Nghề nghiệp</b></label>
        <select id="job" name="job">
            <option value="Student">Học sinh</option>
            <option value="Orther">Khác</option>
        </select>
        <br><br><label><b>Số CMND/CCCD </b></label>
        <input type="text" id="IDcard" placeholder="Số CMND/CCCD" name="IDcard" required>
        <label><b>Captcha</b></label>
        <input type="text" name="captcha" required placeholder="Mã captcha" id="captcha">
        <p id="codeCaptcha" name="codeCaptcha" style="background: #cccccc; width: 30%; text-align: center; font-family: 'Lucida Handwriting';"></p>
        <script src="/static/js/codeCaptcha.js"></script>
        <div class="clearfix">
<%--            <button type="button" class="cancelbtn">Cancel</button>--%>
            <button type="submit" id="signup">Sign Up</button>
        </div>
    </div>
</form>
</body>
</html>
