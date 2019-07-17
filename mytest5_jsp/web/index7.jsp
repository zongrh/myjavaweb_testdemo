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
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
在JSP页面中输出完整的时间，格式为：“年 月 日 时：分：秒”
<br/>
<%
    Date date = new Date();
    String year = String.format("%tY", date);
    String month = String.format("%tm", date);
    String day = String.format("%td", date);
    String hour = String.format("%tH", date);
    String minute = String.format("%tM", date);
    String second = String.format("%tS", date);
    String dateStr = year + "年 " + month + "月 " + day + "日 " + hour + "时 " + minute + "分 " + second + "秒 ";
%>
现在时间是：<%=dateStr%>

</body>
</html>
