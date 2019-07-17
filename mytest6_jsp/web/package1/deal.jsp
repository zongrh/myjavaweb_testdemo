<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");//获取id参数的值
    String user = request.getParameter("user");//获取user参数的值
    String pwd = request.getParameter("pwd");//获取pwd参数的值
%>
<html>
<head>
    <title>处理页</title>
</head>
<body>
id参数的值为：<%=id%><br/>
user参数的值为：<%=user%><br/>
pwd参数的值为：<%=pwd%><br/>

</body>
</html>
