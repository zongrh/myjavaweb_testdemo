<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/16
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="person" class="package4.Person" scope="session">
    <jsp:setProperty name="person" property="*"/>
</jsp:useBean>

<table align="center" width="400">
    <tr>
        <td align="right">姓　名：</td>
        <td>
            <jsp:getProperty property="name" name="person"/>
        </td>
    </tr>
    <tr>
        <td align="right">年　龄：</td>
        <td>
            <jsp:getProperty property="age" name="person"/>
        </td>
    </tr>
    <tr>
        <td align="right">性　别：</td>
        <td>
            <jsp:getProperty property="sex" name="person"/>
        </td>
    </tr>
    <tr>
        <td align="right">住　址：</td>
        <td>
            <jsp:getProperty property="add" name="person"/>
        </td>
    </tr>
</table>
</body>
</html>
