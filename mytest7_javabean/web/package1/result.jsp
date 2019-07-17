<%@ page import="package1.Email" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/15
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<div align="center">
    <%
        //获取邮箱地址
        String mailAdd = request.getParameter("mailAdd");
        //实例化Email 并对mailAdd赋值
        Email email = new Email(mailAdd);
        //判断是否是标准的邮箱地址
        if (email.isEamil()) {
            out.print(mailAdd + "<br>是一个标准的邮箱地址！</br>");
        } else {
            out.print(mailAdd + "<br>不是一个标准的邮箱地址！</br>");
        }
    %>
    <a href="index1.jsp">返回</a>
</div>

</body>
</html>
