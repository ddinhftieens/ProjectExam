<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/29/2019
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NDT</title>
    <link rel="stylesheet" type="text/css" href="/static/css/login.css">
    <script src="/static/js/codeCaptcha.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        var captch = "";
        var input = "";
        $(document).ready(function () {
            $("#login").click(function () {
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
</head>
<body>
<h1>Đăng nhập</h1>
<form style="border: 1px solid #ccc" method="post">
    <div class="container">
        <label><b>Tài khoản</b></label>
        <input type="text" placeholder="Tài khoản" id="username" name="username" required>
        <label><b>Mật khẩu</b></label>
        <input type="password" placeholder="Mật khẩu" id="password"  name="password" required>
        <label><b>Captcha</b></label>
        <input type="text" name="captcha" required placeholder="Mã captcha" id="captcha">
        <p id="codeCaptcha" style="background: #cccccc; width: 30%; text-align: center; font-family: 'Lucida Handwriting';"></p>
        <script src="/static/js/codeCaptcha.js"></script>
        <p>Đăng kí tài khoản <a href="/template/formregister">tại đây</a>.</p>
        <div class="clearfix">
            <button type="submit" id="login">Đăng nhập</button>
        </div>
    </div>
</form>
</body>
</html>
