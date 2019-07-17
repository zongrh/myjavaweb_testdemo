<%--
  Created by IntelliJ IDEA.
  User: nanzong
  Date: 2019/7/15
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册信息</title>
</head>
<body>
<jsp:useBean id="user" class="package9.User">
    <jsp:setProperty name="user" property="*"/>
</jsp:useBean>
<table align="center" width="400">
    <tr>
        <td align="right">姓  名：</td>
        <td>
            <jsp:getProperty name="user" property="name"/>
        </td>
    </tr>
    <tr>
        <td align="right">密  码：</td>
        <td>
            <jsp:getProperty name="user" property="password"/>
        </td>
    </tr>
    <tr>
        <td align="right">性  别：</td>
        <td>
            <jsp:getProperty name="user" property="sex"/>
        </td>
    </tr>
    <tr>
        <td align="right">QQ号码：</td>
        <td>
            <jsp:getProperty name="user" property="qq"/>
        </td>
    </tr>
    <tr>
        <td align="right">E-Mail地址：</td>
        <td>
            <jsp:getProperty name="user" property="mail"/>
        </td>
    </tr>


</table>

</body>
</html>
