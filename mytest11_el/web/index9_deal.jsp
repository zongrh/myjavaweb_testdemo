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
  用户名：${wghfn:codeShift(param.username)}
  <br>
  密&nbsp;&nbsp;码：${wghfn:codeShift(param.pwd)}
  <br>
  <a href="index.jsp">返回</a>
  </body>
</html>
