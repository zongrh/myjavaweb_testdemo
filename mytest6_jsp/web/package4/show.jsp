<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>处理页</title>
</head>
<body>
name参数的值为：<%=new String(request.getParameter("name").getBytes("UTF-8"), "UTF-8") %><br>
sex参数的值为：<%=request.getParameter("sex") %>
</body>
</html>
