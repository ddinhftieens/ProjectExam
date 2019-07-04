<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 7/3/2019
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcom to page</title>
    <link rel="stylesheet" type="text/css" href="/static/css/page.css">
</head>
<body style="margin: 20px; border: 2px solid #cccccc">
<div class="topnav" id="myTopnav">
    <a href="#home" class="active">Giới thiệu</a>
    <a href="/template/selectClass">Kiểm tra</a>
    <a href="">Tiếng anh cho bé</a>
    <div class="dropdown">
        <button class="dropbtn">Tài liệu
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="#">Đề thi</a>
            <a href="#">Tài liệu</a>
        </div>
    </div>
    <a href="#account" style="float: right;">Tài khoản</a>
    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>

<div style="padding-left:16px">
    <h2>Responsive Topnav with Dropdown</h2>
    <p>Resize the browser window to see how it works.</p>
    <p>Hover over the dropdown button to open the dropdown menu.</p>
</div>
<div style="text-align: center;float: end;background-color: #4CAF50">
    <label>@Copyright</label>
</div>
<script>
    function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
            x.className += " responsive";
        } else {
            x.className = "topnav";
        }
    }
</script>
</body>
</html>
