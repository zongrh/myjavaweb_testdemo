<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/31
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String datestyle="yyyy-MM-dd HH:mm:ss";
  SimpleDateFormat format=new SimpleDateFormat(datestyle);
  java.util.Date nowtime=new java.util.Date();
  String strnowtime=format.format(nowtime);
  out.println(strnowtime);
%>