<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/15
  Time: 1:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<form name="form1" method="post" action="deal.jsp">
    用&nbsp;户&nbsp;名：
    <input name="username" type="text" id="username">*<br/>
    密&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp;
    <input name="pwd" type="password" id="pwd">*<br/>
    <input type="submit" name="Submit" value="登录">&nbsp;
    <input name="Reset" type="reset" id="Reset" value="重置">
</form>

</body>
</html>
