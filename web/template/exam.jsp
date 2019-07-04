<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 7/4/2019
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Welcom to page</title>
    <link rel="stylesheet" type="text/css" href="/static/css/selectClass.css">
    <script src="/static/js/buttonStart.js"></script>
</head>
<body onload="load()">
<div class="conteiner">
    <label><b>Lớp</b></label>
    <label id="classexam">${listS.get(0)}</label>
    <label><b>Môn</b></label>
    <label id="subjectexam">${listS.get(1)}</label>
    <form method="post" action="/template/exam">
        <div class="clearfix" id="div_end">
            <button type="submit" id="end">Kết thúc</button>
        </div>
    </form>
</div>
<div class="areatimelimit">
    <p id="areatime"></p>
</div>
<div class="conteiner" style="background-color: #cccccc" id="showtext">
    <div class="clearfix">
        <div class="controller" id="showcontroller">
            <label><b>Câu :</b></label>
            <select id="setvalueoption" style="font-size: 20px; width: 50px">
                <option></option>
            </select>
        </div>
        <div class="context" id="showcontext" style="display: none">
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
