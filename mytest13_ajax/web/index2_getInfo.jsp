<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/31
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<jsp:useBean id="conn" class="mypackage2.ConnDB" scope="page"></jsp:useBean>
<ul>
    <%
        //      ResultSet rs=conn.executeQuery("SELECT title FROM tb_bbsInfo ORDER BY id DESC");	//获取公告信息
        ResultSet rs = conn.executeQuery("select title from tb_bbsinfo");    //获取公告信息
        System.out.println("select title------ " + rs.toString());
        if (rs.next()) {
            do {
                System.out.println("select rsgetString------ " + rs.getString(1));
                out.println("<li>" + rs.getString(1) + "</li>");
            } while (rs.next());
        } else {
            out.println("<a>暂无公告信息！</a>");
        }
    %>

</ul>
</body>
</html>
