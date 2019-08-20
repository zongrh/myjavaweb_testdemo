<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/31
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" scope="page" class="mypackage6.ConnDB6"/>
<%
    String id = request.getParameter("id");
    String sql = "select introduce form tb_book where id =" + id;
    ResultSet rs = conn.executeQuery(sql);
    if (rs.next()) {
        out.println(rs.getString(1));
    }
%>