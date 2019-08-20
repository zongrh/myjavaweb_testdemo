<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/31
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实时显示新闻信息</title>
    <script language="JavaScript" src="JS/AjaxRequest.js"></script>
    <script language="JavaScript">

        function onerror() {
            alert("您的操作有误！");
        }

        /******************实例化Ajax对象的方法*******************************/
        function getNews(){
            var loader=new net.AjaxRequest("index6_getNews.jsp?nocache="+new Date().getTime(),deal_getNews,onerror,"GET");
        }
        /************************回调函数**************************************/
        function deal_getNews(){
            document.getElementById("showNews").innerHTML=this.req.responseText;
        }


        window.onload=function () {
            //调用getNews()方法获取公告信息
            getNews();
            //每隔十分钟调用一次getNews()方法
            window.setInterval("getNews()", 600000);
        }
    </script>
</head>
<body style="font-size: 9pt">
<div id="showNews"></div>
</body>
</html>
