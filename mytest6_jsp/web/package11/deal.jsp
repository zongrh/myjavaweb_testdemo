<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/15
  Time: 1:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("GB18030");
    String author = request.getParameter("author");    //获取留言人
    String content = request.getParameter("content");    //获取留言内容
    String message = "[" + author + "]说：" + content + "<br>";    //组合留言信息

    if (session.getAttribute("message") != null) {
        message += session.getAttribute("message").toString();
    }
    if (author == "") {
        message = "留言人不能为null哦";
    }
    if (content == "") {
        message = "留言内容不能为null哦";
    }
    session.setAttribute("message", message);    //将留言信息保存到session中
    response.sendRedirect("index11.jsp");
%>
</body>
</html>
