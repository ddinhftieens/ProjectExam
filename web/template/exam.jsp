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
    <link rel="stylesheet" type="text/css" href="/static/css/home.css">
    <script src="/static/js/exam.js"></script>
</head>
<body>
<div class="conteiner">
    <label><b>Lớp</b></label>
    <label id="class_" style="display: none;"></label>
    <select id="class" class="select" onchange="myselect()">
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
    <label id="subject_" style="display: none"></label>
    <select id="subject" class="select" onchange="mysubject()">
        <option id="selectsubject">Chọn môn</option>
        <option id="math" name="math" value="Toán">Toán</option>
        <option id="physical" name="physical" value="Vật lý">Vật lý</option>
        <option id="chemistry" name="chemistry" value="Hóa học">Hóa học</option>
        <option id="biological" name="biological" value="Sinh học">Sinh học</option>
        <option id="history" name="history" value="Lịch sử">Lịch sử</option>
        <option id="geography" name="geography" value="Địa lý">Địa lý</option>
        <option id="english" name="english" value="Tiếng anh">Tiếng anh</option>
    </select>
    <form method="post">
        <div class="clearfix" id="div_start">
            <button type="button" onclick="load(),timelimit()" id="start" disabled>Bắt đầu</button>
        </div>

        <div class="clearfix" id="div_end" style="display: none;">
            <button type="submit" id="end" onclick="finish()">Kết thúc</button>
        </div>
    </form>
</div>
<div class="areatimelimit">
    <p id="areatime"></p>
</div>
<div class="conteiner" style="background-color: #cccccc; display: none" id="showtext">
    <div class="clearfix">
        <div class="controller" id="showcontroller">
            <label><b>Câu :</b></label>
            <select id="setvalueoption" style="font-size: 20px; width: 50px">
                <option></option>
            </select>
        </div>
        <div class="context" id="showcontext">
            <label>Tínhsdklasdjkfsd dkajsdofije askdjfoawe klsdj sdkaklajsd gsdj asodifj we sdjkfajo we jksd jfkasjodij akdk askgjwoe kasdkg aksdjg oiwejg aksd jioawejgoijaiods</label><br>
            <input type="radio" name="anserw" value="A" style="width: 25px; height: 25px;">Tínhsdklasdjkfsd dkajsdofije askdjfoawe klsdj sdkaklajsd gsdj asodifj we sdjkfajo we jksd jfkasjodij akdk askgjwoe kasdkg aksdjg oiwejg aksd jioawejgoijaiods<br>
            <input type="radio" name="anserw" value="B" style="width: 25px; height: 25px;">Tínhsdklasdjkfsd dkajsdofije askdjfoawe klsdj sdkaklajsd gsdj asodifj we sdjkfajo we jksd jfkasjodij akdk askgjwoe kasdkg aksdjg oiwejg aksd jioawejgoijaiods<br>
            <input type="radio" name="anserw" value="C" style="width: 25px; height: 25px;">Tínhsdklasdjkfsd dkajsdofije askdjfoawe klsdj sdkaklajsd gsdj asodifj we sdjkfajo we jksd jfkasjodij akdk askgjwoe kasdkg aksdjg oiwejg aksd jioawejgoijaiods<br>
            <input type="radio" name="anserw" value="D" style="width: 25px; height: 25px;">Tínhsdklasdjkfsd dkajsdofije askdjfoawe klsdj sdkaklajsd gsdj asodifj we sdjkfajo we jksd jfkasjodij akdk askgjwoe kasdkg aksdjg oiwejg aksd jioawejgoijaiods<br>
        </div>
    </div>
</div>
</body>
</html>
