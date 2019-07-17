<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/14
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>写入cookie</title>
    <script type="text/javascript">window.location.href="index3.jsp"</script>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String user=URLEncoder.encode(request.getParameter("user"),"utf-8");	//获取用户名
    Cookie cookie = new Cookie("mrCookie", user+"#"+new java.util.Date().toLocaleString());
    cookie.setMaxAge(60*60*24*30);		//设置cookie有效期30天
    response.addCookie(cookie);	//保存cookie
%>

</body>
</html>
