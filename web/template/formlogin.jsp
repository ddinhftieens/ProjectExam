<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/29/2019
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NDT</title>
    <link rel="stylesheet" type="text/css" href="/static/css/login.css">
</head>
<body>
<h1>Đăng nhập</h1>
<form style="border: 1px solid #ccc" method="post">
    <div class="container">
        <label><b>Tài khoản</b></label>
        <input type="text" placeholder="Tài khoản" id="username" name="username" required>
        <label><b>Mật khẩu</b></label>
        <input type="password" placeholder="Mật khẩu" id="password"  name="password" required>
        <p>Đăng kí tài khoản <a href="formregister.jsp">tại đây</a>.</p>
        <div class="clearfix">
            <button type="submit">Đăng nhập</button>
        </div>
    </div>
</form>
</body>
</html>
