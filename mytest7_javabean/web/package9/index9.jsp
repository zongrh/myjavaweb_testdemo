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
    <title>用户注册</title>
</head>
<body>
<form action="reg.jsp" method="post">
    <table align="center" width="450">
        <tr>
            <td align="center" colspan="2">
                <h2>用户注册</h2>
                <hr>
            </td>
        </tr>
        <tr>
            <td align="right">用户名：</td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td align="right">密码：</td>
            <td><input type="text" name="password"></td>
        </tr>
        <tr>
            <td><input type="radio" name="sex" value="男" checked="checked">男
                <input type="radio" name="sex" value="女">女
            </td>
        </tr>
        <tr>
            <td align="right">QQ号码：</td>
            <td><input type="text" name="qq"></td>
        </tr>
        <tr>
            <td align="right">E-Mail地址：</td>
            <td><input type="text" name="mail"></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="注 册">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
