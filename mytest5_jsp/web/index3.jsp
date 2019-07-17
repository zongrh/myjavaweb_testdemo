<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/12
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>一个简单的JSP页面——显示系统时间</title>
</head>
<body>
<%
    String str = "";
    for (int i = 1; i <= 9; i++) {    // 外循环
        for (int j = 1; j <= i; j++) {// 内循环
            str += j + "*" + i + "=" + j * i;
            str += "&nbsp";    //加入空格符
            str += "&nbsp";    //加入空格符
            str += "&nbsp";    //加入空格符
            str += "&nbsp";    //加入空格符
        }
        str += "<br>";                    // 加入换行符
    }
%>
<table width="440" height="85" border="1" cellpadding="0" cellspacing="0"
       style="font:9pt;"
       bordercolordark="#666666" bordercolorlight="#FFFFFF" bordercolor="#FFFFFF">
<tr>
    <td height="30" align="center">九九乘法表</td>
</tr>
<tr>
    <td style="padding:3pt">
        <%=str%>                    <!-- 输出九九乘法表 -->
    </td>
</tr>

</table>

</body>
</html>
