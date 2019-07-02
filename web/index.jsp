<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/29/2019
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="static/js/timeTopagelogin.js"></script>
    <title>NDT</title>
    <style type="text/css">
      .container {
        padding: 16px;
        font-size: 20px;
        text-align: center;
      }
    </style>
  </head>
  <body onload="redirect_login()">
  <div class="container">
    <label><b>Trang web bạn muốn đến sẽ tự động chuyển tới sau</b></label>
    <p id=areaTimeout style="color: red; font-size: 60px"></p>
<%--    <div id="timenow"></div>--%>
  </div>
  </body>
</html>
