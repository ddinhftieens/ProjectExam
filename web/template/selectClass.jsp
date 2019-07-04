<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/29/2019
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Welcom to page</title>
    <link rel="stylesheet" type="text/css" href="/static/css/selectClass.css">
    <script src="/static/js/selectClass.js"></script>
</head>
<body>
<form method="post">
    <div class="conteiner">
        <label><b>Lớp</b></label>
        <select id="class" name="class" class="select" onchange="myselect()">
            <option id="selectclass">Chọn lớp</option>
            <option id="1" name="1" value="1">Lớp 1</option>
            <option id="2" name="2" value="2" disabled>Lớp 2</option>
            <option id="3" name="3" value="3" disabled>Lớp 3</option>
            <option id="4" name="4" value="4" disabled>Lớp 4</option>
            <option id="5" name="5" value="5" disabled>Lớp 5</option>
            <option id="6" name="6" value="6" disabled>Lớp 6</option>
            <option id="7" name="7" value="7" disabled>Lớp 7</option>
            <option id="8" name="8" value="8" disabled>Lớp 8</option>
            <option id="9" name="9" value="9" disabled>Lớp 9</option>
            <option id="10" name="10" value="10" disabled>Lớp 10</option>
            <option id="11" name="11" value="11" disabled>Lớp 11</option>
            <option id="12" name="12" value="12">Lớp 12</option>
        </select>
        <label><b>Môn</b></label>
        <select id="subject" name="subject" class="select" onchange="mysubject()">
            <option id="selectsubject">Chọn môn</option>
            <option id="math" name="math" value="math">Toán</option>
            <option id="physical" name="physical" value="physical">Vật lý</option>
            <option id="chemistry" name="chemistry" value="chemistry">Hóa học</option>
            <option id="biological" name="biological" value="biological">Sinh học</option>
            <option id="history" name="history" value="history">Lịch sử</option>
            <option id="geography" name="geography" value="geography">Địa lý</option>
            <option id="english" name="english" value="english">Tiếng anh</option>
        </select>
        <div class="clearfix" id="div_start">
            <button type="submit" id="start" disabled>Bắt đầu</button>
        </div>
    </div>
</form>
</body>
</html>
