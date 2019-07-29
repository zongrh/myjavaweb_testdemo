<%@ page import="java.util.Vector" %>
<%@ page import="mypackage3.UserInfoList" %>
<%@ page import="mypackage3.UserInfoTrace" %><%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/18
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用监听查看在线用户</title>
    <link href="package3/style3.css" rel="stylesheet" type="text/css">
</head>

<%
    UserInfoList list = UserInfoList.getInstance();
    UserInfoTrace ut = new UserInfoTrace();
    String name = request.getParameter("user");
    ut.setUser(name);
    session.setAttribute("list", ut);
    list.addUserInfo(ut.getUser());
    session.setMaxInactiveInterval(10);
%>
<body>
<div align="center">
    <table width="506" height="246" border="0" cellpadding="0"
           cellspacing="0" background="package3/image/background2.jpg">
        <tr>
            <td align="center">
                <br/>
                <textarea rows="8" cols="20">
<%
    Vector vector = list.getList();
    if (vector != null && vector.size() > 0) {
        for (int i = 0; i < vector.size(); i++) {
            out.println(vector.elementAt(i));
        }
    }
%>

                </textarea>
                <a href="loginOut.jsp">返回</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
