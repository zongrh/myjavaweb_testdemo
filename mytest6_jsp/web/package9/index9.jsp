<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  errorPage="error.jsp" %>
<html>
<head>
    <title>使用exception对象获取异常信息</title>
</head>
<body>
<%
    //保存单价到request范围内的变量price中
    request.setAttribute("price", "12.5元");
    //获取单价，并转换为float型
    float price = Float.parseFloat(request.getAttribute("price").toString());
%>

</body>
</html>
