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
    <title>在JSP页面中输出字符“*”组成的金字塔</title>
</head>
<body>
在JSP页面中输出字符“*”组成的金字塔
<br/>

<%
    String str = "";
    for (int i = 0; i < 15; i++) {
        for (int j = 15; j > i; j--) {
            str += "&nbsp;";
        }
        for (int j = 0; j < i; j++) {
            str += "*&nbsp;";
        }
        str += "<br/>";
    }
%>
<%--输出系统时间--%>
当前时间：<%=str%>
</body>
</html>
