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
    <title>错误提示</title>
</head>
<body>
<h1>${error}</h1>
  <input name="btn_return" type="button" value="返回" onclick="history.back(-1);">
</body>
</html>
