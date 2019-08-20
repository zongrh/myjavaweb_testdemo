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
    <title>$Title$</title>
    <script language="JavaScript" src="JS/AjaxRequest.js"></script>
    <script language="JavaScript">
        function getSysTime() {
            var loader = new net.AjaxRequest("index5_deal.jsp?nocache=" + new Date().getTime(),
                deal, onerror, "GET");
        }

        function deal() {
            document.getElementById("clock").innerText = "现在是：" + this.req.responseText;
        }

        function onerror() {
            alert("出错了！");
        }

        timer = window.setInterval("getSysTime()", 1000);
    </script>
</head>
<body onload="getSysTime()" style="margin: 0px;">
<table width="901" height="128" border="0" align="center" cellpadding="0" cellspacing="0" background="images5/bg.jpg">
    <tr>
        <td height="96"></td>
    </tr>
    <tr>
        <td style="padding-left: 20pt;font-size: 9pt">
            <div id="clock">系统时间</div>
        </td>
    </tr>
</table>
</body>
</html>
