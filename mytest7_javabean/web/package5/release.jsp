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
    <title>发布结果</title>
    <style type="text/css">
        #container {
            width: 450px;
            border: solid 1px;
            padding: 20px;
        }

        #title {
            font-size: 16px;
            font-weight: bold;
            color: #3399FF;
        }

        #content {
            font-size: 12px;
            text-align: left;
        }
    </style>
</head>
<body>
<jsp:useBean id="news" class="package5.News"/>
<jsp:useBean id="encoding" class="package5.CharactorEncoding"/>
<jsp:setProperty name="news" property="*"/>
<div align="center">
    <div id="container">
        <div id="title">
            <%=encoding.toString(news.getTitle())%>
        </div>
        <hr>
        <div id="content">
            <%=encoding.toString(news.getContent())%>
        </div>
    </div>

</div>

</body>
</html>
