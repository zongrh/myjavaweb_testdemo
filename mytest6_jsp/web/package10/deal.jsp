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
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("GB18030");
    String username = request.getParameter("username");
    String pwd = request.getParameter("pwd");
    if ("mr".equals(username) && "mrsoft".equals(pwd)) {
        out.print("<script language='javascript'>alert('登录成功！');window.location.href='index10.jsp';</script>");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
</body>
</html>
