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
  Date date = new Date();//获取日期对象
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期时间格式
  String today = df.format(date);//获取当前系统日期
%>>
<%--输出系统时间--%>
当前时间：<%=today%>
</body>
</html>
