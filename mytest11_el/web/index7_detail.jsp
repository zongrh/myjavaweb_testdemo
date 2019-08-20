<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/30
  Time: 8:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    request.setCharacterEncoding("GB18030");
  %>
  ${empty param.username?"用户名为空":param.username}
  <br>
  ${empty param.pwd?"密码为空":param.pwd}
  <br>
  <a href="index7.jsp">返回</a>
  </body>
</html>
