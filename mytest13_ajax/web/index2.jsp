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
    <title>实时显示公告信息</title>
    <script language="JavaScript"  src="JS/AjaxRequest.js"></script>
    <script language="JavaScript">
        /******************错误处理的方法*******************************/
        function onerror(){
            alert("您的操作有误！");
        }
        /******************实例化Ajax对象的方法*******************************/
        function getInfo(){
            var loader=new net.AjaxRequest("index2_getInfo.jsp?nocache="+new Date().getTime()
                ,deal_getInfo,onerror,"GET");
        }
        /************************回调函数**************************************/
        function deal_getInfo(){
            document.getElementById("showInfo").innerHTML=this.req.responseText;
        }
        window.onload=function(){
            getInfo();	//调用getInfo()方法获取公告信息
            window.setInterval("getInfo()", 600000);	//每隔10分钟调用一次getInfo()方法
        }
    </script>

    <title>实时显示公告信息</title>
</head>
<body>
<div style="border: 1px solid;height: 250px; width:200px;padding: 5px;">
    <marquee direction="up" scrollamount="3">
        <div id="showInfo"></div>
    </marquee>
</div>
</body>
</html>