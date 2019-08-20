<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/30
  Time: 8:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" scope="page" class="mypackage4.UserInfo" type="mypackage4.UserInfo">
    <jsp:setProperty name="user" property="name" value="明日科技"/>
</jsp:useBean>
<html>
<head>
    <title>通过pageScope隐含对象读取page范围内的JavaBean的属性值</title>
</head>
<body>
${pageScope.user.name}
</body>
</html>
