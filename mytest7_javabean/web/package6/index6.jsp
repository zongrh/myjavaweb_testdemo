<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/15
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电子时钟</title>
    <style type="text/css">
        #clock {
            width: 420px;
            height: 80px;
            background: #e0e0e0;
            font-size: 25px;
            font-weight: bold;
            border: solid 5px orange;
            padding: 20px;
        }

        #week {
            padding-top: 15px;
            color: #ff515f;
        }

        #time {
            padding-top: 20px;
            color: #ff7c32;
        }
    </style>
</head>
<body>
<jsp:useBean id="date" class="package6.DateBean" scope="application"/>
<div align="center">
    <div id="clock">
        <div id="time">
            <jsp:getProperty name="date" property="dateTime"/>
        </div>
        <div id="week">
            <jsp:getProperty name="date" property="week"/>
        </div>

    </div>
</div>

</body>
</html>
