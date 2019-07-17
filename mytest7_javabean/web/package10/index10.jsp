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
    <title>计数器</title>
</head>
<body>
<jsp:useBean id="counter" class="package10.Counter"/>
  <h2>
      欢迎光临，您是第
      <jsp:getProperty name="counter" property="count"/>
      位来访者
  </h2>
</body>
</html>
